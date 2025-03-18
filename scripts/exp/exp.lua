exp = exp or {}
exp.going = false
exp.step = 1
exp.paused = false
exp.path = {}
exp.num = {}
exp.conf = {}

function exp:start(conf)
  self.conf = conf
  if not self.going then
    self.going = true
    self.step = 1
    self.path = self.conf.path
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
    self.paused = false
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

function exp:stop()
    self.going = false
    self.step = 1
    self.paused = false
end

scripts.events["exp.onEnemyKilled"] = registerAnonymousEventHandler("onEnemyKilled", function(event, arg)
  exp:doThings()
end)
