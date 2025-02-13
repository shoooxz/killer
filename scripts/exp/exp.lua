exp = exp or {}
exp.going = false
exp.step = 1
exp.paused = false
exp.path = {}

function exp:start(path)
  if not self.going then
    self.going = true
    self.step = 1
    self.path = path
    self:speedwalk()
  end
end

function exp:wait()
  if self.paused then
    tempTimer(2, function()
      self:wait()
    end)
  else
    self:speedwalk()
  end
end

function exp:speedwalk()
  if self.path[self.step] then
      tempTimer(2, function()
          if self.going and not self.paused then
              self.paused = true
              self:move(self.path[self.step])
              self.step = self.step+1
              self:doThings()
              self:wait()
          end
      end)
  else
      tempTimer(2, function()
          printer:error("Exp", "Koniec!")
      end)
      self:stop()
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
    else
        printer:error("Exp", "Nie mozna znalezc Room ID!")
        self:stop()
    end
end

function exp:doThings()
  for i, p in pairs(gmcp.Room.People) do
    display(p.name)
  end
end

function exp:stop()
    self.going = false
    self.step = 1
    self.paused = false
end
