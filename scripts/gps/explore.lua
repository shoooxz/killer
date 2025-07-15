exp = exp or {}
exp.going = false
exp.step = 1
exp.paused = false
exp.path = {}
exp.num = {}
exp.conf = {}
exp.members = {}
exp.heal = {}
exp.heal.proc = 5
exp.heal.spell = "cure serious"
exp.heal.reverse = true
exp.deadCount = 0
exp.tankSub = true
exp.ids = {}
exp.showingPath = false

function exp:goTo(id)
  if id == 0 then
    printer:error("GPS", "Sciezka do "..tostring(id).." nie istnieje!")
    return
  end
  self.showingPath = true
  if not gotoRoom(id) then
    printer:error("GPS", "Sciezka do "..tostring(id).." nie istnieje!")
    return
  end
end

function exp:showPath(path, ids)
  if path and next(ids) then
    for i, roomId in ipairs(ids) do
      tempTimer(i/20, function()
          highlightRoom(tonumber(roomId), 255, 255, 255, 0, 0, 0, 1, 255, 0)
          centerview(tonumber(roomId))
          if i == #ids then
            exp:unhighlight(ids)
            mapper:centerGMCP(true)
          end
      end)
    end
  end
  self.showingPath = false
end

function exp:highlight(path)
  for _, roomId in ipairs(path) do
    highlightRoom(tonumber(roomId), 255, 255, 255, 0, 0, 0, 1, 255, 0)
  end
end

function exp:unhighlight(path)
  if path then
    for _, roomId in ipairs(path) do
      if roomId then
        unHighlightRoom(roomId)
      end
    end
  end
end

function exp:dirHasDoor(exit)
  local doors = getDoors(getPlayerRoom())
  if exit == "d" then exit = "down" end
  if exit == "u" then exit = "up" end
  for dir, _ in pairs(doors) do
    if dir == exit then
      return true
    end
  end
  return false
end

function exp:interrupted(command)
    if self.going then
        -- w tym momencie jest spauzowane, czeka na nowa lokacje
        send(command)
        stopRecursion = true
        tempTimer(5, function()
            -- po 5 sec cofnij step i odpauzuj
            stopRecursion = false
            exp.step = exp.step - 1
            exp.paused = false
            self:speedwalk()
        end)
    end
end

function doSpeedWalk()
    if exp.showingPath then
      exp:showPath(speedWalkDir, speedWalkPath)
    else
      if not exp.going then
          exp.ids = speedWalkPath
          exp:highlight(speedWalkPath)
          --display(speedWalkDir)
          exp:start({
            ["path"] = speedWalkDir,
            ["enemy"] = {"Wychudzona harpia", "Wilk", "Wielki niedzwiedz", "Mlode yeti", "Mysliwy yeti", "Stare yeti"},
            ["ident"] = false,
            ["loot"] = "cialo",
          })
          -- TODO obliczyc czas delay x ilosc lokacji
      end
    end
end

function exp:isGoing()
  return self.going
end

function exp:start(conf)
  self.conf = conf
  if not self.going then
    self.going = true
    self.step = 1
    self.path = self.conf.path
    self.members = self:getMembers()
    if self.conf.ident then
      opener:setByName(self.conf.ident)
      state:orderTeam("opener "..self.conf.ident)
      -- TODO dodac buff set na start
    end
    if self.conf.onStart then
      self.conf.onStart()
    end
    self:speedwalk()
  end
end

function exp:pause()
  if self.paused then
    if stopRecursion then
      return false
    end
    tempTimer(1, function()
      self:pause()
    end)
  else
    self:speedwalk()
  end
end

function exp:speedwalk()
  if self.path[self.step] then
      if self.going and not self.paused then
          self.paused = true
          self.num = self:move(self.path[self.step])
          self.deadCount = 0
          self.step = self.step+1
          self:waitForNewRoom()
      end
  else
      tempTimer(1, function()
          printer:error("GPS", "Koniec!")
      end)
      self:stop()
  end
end

function exp:waitForNewRoom()
  if gmcp.Room.Info.num ~= self.num then
    if stopRecursion then
      return false
    end
    tempTimer(profile:get("walker")/10, function()
      self:waitForNewRoom()
    end)
  else
    self:doThings()
    self:pause()
  end
end

function exp:move(dir)
    if mapper.en2short[dir] then
      dir = mapper.en2short[dir]
    end
    local roomID = mapper:getRoomViaExit(dir)
    if not roomID then
        local special = getSpecialExitsSwap(mapper.room.id)
        if special[dir] then
            roomID = special[dir]
        end
    end
    if roomID then
        if self:dirHasDoor(dir) then
          send("open "..dir)
        end
        send(dir)
        mapper:center(roomID)
        unHighlightRoom(roomID)
        return roomID
    else
        printer:error("GPS", "Nie mozna znalezc Room ID!")
        self:stop()
    end
end

function exp:doThings()
  local enemy = self:enemyExists()
  if enemy then
    -- order sub kill
    -- assist leci z automatu
    if self.tankSub then
      state:orderKill(enemy)()
    else
      state:meKill(enemy)()
    end
  else
    if self.conf.ident then
      -- jesli heal jest w memie
      if mem:canCast(self.heal.spell) then
        -- odpauzuj
        self:loot()
      else
        -- rest
        state:orderTeam("rest;recup;medi")
        send("rest;recup;medi")
      end
    else
      self.paused = false
    end
  end
end

function exp:loot()
  if self.deadCount > 0 then
    if self.conf.loot == "gleba" then
      send("look;get all")
      self.paused = false
    else
      inventory:tryLoot(self.deadCount, self.conf.loot)
    end
  else
    self.paused = false
  end
end

function exp:enemyExists()
  local loc = utils:getRoomPeople()
  for i=1, #self.conf.enemy do
    if utils:inArray2(self.conf.enemy[i], loc) then
      return self.conf.enemy[i]
    end
  end
  return false
end

function exp:getMembers()
  local temp = {}
  for index, v in pairs(gmcp.Char.Group.members) do
      temp[v.name] = v
      temp[v.name].hp = character:getHealth(v.hp)
      temp[v.name].mv = character:getMove(v.mv)
  end
  return temp
end

function exp:stop()
  if self.going then
    self.going = false
    self.step = 1
    self.paused = false
    if self.conf.onEnd then
      self.conf.onEnd()
    end
    self:unhighlight(self.ids)
    printer:error("GPS", "Chodzik przerwany!")
  end
end

function exp:onRestDone()
  if self.going then
    send("stand")
    state:orderTeam("stand")
    self:loot()
  end
end

scripts.events["exp.onBodyLooted"] = registerAnonymousEventHandler("onBodyLooted", function(event, arg)
  if exp.going then
    exp.paused = false
  end
end)

scripts.events["exp.onEnemyKilled"] = registerAnonymousEventHandler("onEnemyKilled", function(event, arg)
  if exp.going then
    exp.deadCount = exp.deadCount+1
    exp:doThings()
  end
end)

scripts.events["exp.gmcpRoomPeople"] = registerAnonymousEventHandler("gmcp.Room.People", function(event, arg)
  if exp.going and exp.conf.ident then
    local now = exp:getMembers()
    local sub = profile:get("sub")
    for name, member in pairs(now) do
      -- jesli zycie mniejsze od poprzedniego
      if now[name].hp < exp.members[name].hp then
        -- jesli osiagnelo dany prog zycia
        if now[name].hp == exp.heal.proc then
          -- cast heala
          if exp.heal.reverse then
            send("order "..sub.." x '"..exp.heal.spell.."' "..name)
          end
          send("c '"..exp.heal.spell.."' "..name)
        end
      end
    end

    exp.members = now
  end
end)
