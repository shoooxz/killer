-- ZROBIC W BACKWARD -1 step do walkera WIESZ O CO BEBE

function doSpeedWalk()
    --speedWalkDir
    --speedWalkPath
    --display(speedWalkDir)
    if not mapper.walker.going then
        mapper.walker.path = speedWalkDir
        mapper.walker.going = true
        mapper.walker.ids = speedWalkPath
        mapper:highlight(speedWalkPath)
        mapper:speedwalk()
        -- TODO obliczyc czas delay x ilosc lokacji
    end
end

function mapper:showPath()

end

function mapper:highlight(path)
  for _, roomId in ipairs(path) do
    highlightRoom(tonumber(roomId), 255, 255, 255, 0, 0, 0, 1, 255, 0)
  end
end

function mapper:unhighlight(path)
  if path then
    for _, roomId in ipairs(path) do
      if roomId then
        unHighlightRoom(roomId)
      end
    end
  end
end

function mapper:speedwalk()
    if self.walker.path[self.walker.step] then
        tempTimer(profile:get("walker"), function()
            if self.walker.going then
                self:walkerMove(self.walker.path[self.walker.step])
                self.walker.step = self.walker.step +1
                self:speedwalk()
            end
        end)
    else
        self:walkerStop()
    end
end

function mapper:walkerStop()
    self.walker.going = false
    self.walker.step = 1
    mapper:unhighlight(mapper.walker.ids)
end

function mapper:walkerInterrupted(command)
    if self.walker.going then
        self.walker.going = false
        send(command)
        tempTimer(5, function()
            self.walker.step = self.walker.step - 1
            self.walker.going = true
            mapper:speedwalk()
        end)
    end
end

function mapper:walkerMove(dir)
    if self.en2short[dir] then
        dir = self.en2short[dir]
    end
    local roomID = self:getRoomViaExit(dir)
    if not roomID then
        local special = getSpecialExitsSwap(self.room.id)
        if special[dir] then
            roomID = special[dir]
        end
    end
    if roomID then
        if mapper:walkerDirHasDoor(dir) then
          send("open "..dir)
        end
        send(dir)
        unHighlightRoom(roomID)
        --send("herb") --- TODO Ogarnac alias
        self:center(roomID)
    else
        printer:error("Walker", "Chodzik wstrzymany!")
        self:walkerStop()
    end
end


function mapper:walkerDirHasDoor(exit)
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
