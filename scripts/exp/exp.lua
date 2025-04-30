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

function exp:start(conf)
  self.conf = conf
  if not self.going then
    self.going = true
    self.step = 1
    self.path = self.conf.path
    self.members = self:getMembers()
    opener:setByName(self.conf.ident)
    state:orderTeam("opener "..self.conf.ident)
    self:speedwalk()
  end
end

function exp:pause()
  if self.paused then
    tempTimer(2, function()
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
          self.step = self.step+1
          self:waitForNewRoom()
      end
  else
      tempTimer(2, function()
          printer:error("Exp", "Koniec!")
      end)
      self:stop()
  end
end

function exp:waitForNewRoom()
  if gmcp.Room.Info.num ~= self.num then
    tempTimer(1, function()
      self:waitForNewRoom()
    end)
  else
    self:doThings()
    self:pause()
  end
end

function exp:move(dir)
    local roomID = mapper:getRoomViaExit(dir)
    if not roomID then
        local special = getSpecialExitsSwap(mapper.room.id)
        if special[dir] then
            roomID = special[dir]
        end
    end
    if roomID then
        if mapper:walkerDirHasDoor(dir) then
          send("open "..dir)
        end
        send(dir)
        mapper:center(roomID)
        return roomID
    else
        printer:error("Exp", "Nie mozna znalezc Room ID!")
        self:stop()
    end
end

function exp:doThings()
  local enemy = self:enemyExists()
  if enemy then
    -- order sub kill
    -- assist leci z automatu
    state:orderKill(enemy)()
  else
    -- jesli heal jest w memie
    if mem:canCast(self.heal.spell) then
      -- odpauzuj
      self.paused = false
    else
      -- rest
      state:orderTeam("rest;recup;medi")
      send("rest;recup;medi")
    end
  end
end

function exp:enemyExists()
  local loc = self:getRoomPeople()
  for i=1, #self.conf.enemy do
    if utils:inArray2(self.conf.enemy[i], loc) then
      return self.conf.enemy[i]
    end
  end
  return false
end

function exp:getRoomPeople()
  local out = {}
  for i, p in pairs(gmcp.Room.People) do
    table.insert(out, p.name)
  end
  return out
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
    self.going = false
    self.step = 1
    self.paused = false
end

function exp:onRestDone()
  if self.going then
    send("stand")
    state:orderTeam("stand")
    self.paused = false
  end
end

scripts.events["exp.onEnemyKilled"] = registerAnonymousEventHandler("onEnemyKilled", function(event, arg)
  if exp.going then
    exp:doThings()
  end
end)

scripts.events["exp.gmcpRoomPeople"] = registerAnonymousEventHandler("gmcp.Room.People", function(event, arg)
  if exp.going then
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

--[[
{ {
    hp = "żadnych śladów",
    is_npc = false,
    mem = 0,
    mv = "wypoczęty",
    name = "Zorath",
    pos = "odpoczywa",
    room = 42657
  }, {
    hp = "żadnych śladów",
    is_npc = false,
    mem = 0,
    mv = "wypoczęty",
    name = "Boren",
    pos = "odpoczywa",
    room = 42657
  } }
]]--
