function mapper:move(dir)
	--[[if not next(gmcp) then
		send(dir)
	end]]--
	keybind.show = true
	self:walkerStop()
	boss:timerStop()

	-- BLOKUJ WYJSCIA  /blokuj /odblokuj
	if utils:inArray2(dir, utils:split(getRoomUserData(self.room.id, "block"), "#")) then
		return false
	end

	-- CZY ISTNIEJE ROOM ID W TAMTA STRONE PRZEZ API MUDLETA
	local roomID = self:getRoomViaExit(dir)
	local command = false
	if self.drawing then
		self.draw = nil

		-- JESLI Z GMCP JEST WYJSCIE A NIE MA Z API MUDLETA (omin juz istniejace)
		-- jesli 3 bez gmcp rysowanie, albo 4 gdy nie ma pokazanych wyjsc z gmcp
		if (self:gmcpExitExists(dir) and not roomID) or self.mode == 3 or self.mode == 4 then

				-- AUTMATYCZNIE DODAJ SPECJALNE PRZEJSCIE Z GMCP
				if self.dir2spe[dir] then
					send("open "..self.dir2spe[dir])
					self:addSpecialExitAndRoom(dir, self.dir2spe[dir])
					return
				end

				-- CZY ISTNIEJE LOKACJA W TAMTA STRONE PO KOORDYNATACH X Y
				roomID = self:getRoomViaCoords(dir)
				if roomID then
					-- CONNECT
					if self.dir2door[dir] then
						send("open "..dir)
					end
					self.draw = {}
					self.draw.connect = true
					self.draw.from = self.room.id
					self.draw.to = roomID
					self.draw.dir = dir
					send(dir)
					return
				else
					-- GENERATE NEW
					if self.dir2door[dir] then
						send("open "..dir)
					end
					self.draw = {}
					self.draw.new = true
					self.draw.from = self.room.id
					self.draw.dir = dir
					self.draw.command = dir
					send(dir)
					return
			end
		end
	end

	-- jesli nie ma standardowego wyjscia
	if not roomID then
		command, roomID = self:getCommandViaDir(dir)
		if command and roomID then
			dir = command
		end
	end

	-- ostatecznie sprawdz czy wyjscie jest polaczone na sztywno w mecie
	if not roomID then
		command, roomID = self:getCommandViaMeta(dir)
		if command and roomID then
			dir = command
		end
	end

	-- killer doors start
	if self:doorExists(dir) then
		send("open "..dir)
	end
	-- killers doors end
	send(dir)

	if (not self.drawing or self.mode == 3) and roomID then
		self:center(roomID)
	end
end

function mapper:doorExists(dir)
	if dir == "u" then dir = "up" end
	if dir == "d" then dir = "down" end
	if self.room.doors[dir] then
		return true
	end
	return false
end

function mapper:moveBackward()
	self:center(self.lastKnownID)
end

function mapper:getRoomViaExit(dir)
	--[[
		up = 25362,
		south = 25386,
		north = 25363
	]]--
	if self.room.exits and self.room.exits[self.short2en[dir]] then
		return self.room.exits[self.short2en[dir]]
	end
end

function mapper:gmcpExitExists(dir)
	--[[
		"n",
		"s",
		"u",
		"kuznia"
	]]--
	for i = 1, #self.gmcp.exits do
		if self.gmcp.exits[i] == dir then
			return true
		end
	end
end

function mapper:getRoomViaCoords(dir)
	local coords = self:convertCoords(dir)
	local rooms = getRoomsByPosition(self.room.area, coords.x, coords.y, coords.z)
	if rooms[0] then
		return rooms[0]
	end
end

function mapper:getCommandViaDir(dir)
	if self.room.id then
		local spe = getSpecialExitsSwap(self.room.id)
	    if spe then
	        for command, roomID in pairs(spe) do
	            local x, y, z = getRoomCoordinates(roomID)
				if self:coordsMatchDirection(dir, x, y, z) then
					return command, roomID
				end
	        end
	    end
		local exits = self.room.exits
		for command, roomID in pairs(exits) do
			if command == "down" or command == "up" then
				local x, y, z = getRoomCoordinates(roomID)
				if self:coordsMatchDirection(dir, x, y, z) then
					return self.en2short[command], roomID
				end
			end
		end
	end
end

function mapper:getCommandViaMeta(dir)
	if self.room.id then
		local out = utils:split(getRoomUserData(self.room.id, dir),  "=")
		return out[1], out[2]
	end
end

--[[ Pobiera kierunek, zwracajac koordynaty dla danego stepu ]]--
function mapper:convertCoords(dir)
	--( 0,  0) start
	--( 0, +1) -> N
	--( 0, -1) -> S
	--(-1,  0) -> W
	--(+1,  0) -> E
	--(+1, +1) -> NE
	--(+1, -1) -> SE
	--(-1, +1) -> NW
	--(-1, -1) -> SW
	--( 0,  0, -1) -> D
	--( 0,  0, +1) -> U
	local output = {
		["n"] = {
			x = self.room.coords.x,
			y = self.room.coords.y + self.step,
			z = self.room.coords.z
		},
		["s"] = {
			x = self.room.coords.x,
			y = self.room.coords.y - self.step,
			z = self.room.coords.z
		},
		["w"] = {
			x = self.room.coords.x - self.step,
			y = self.room.coords.y,
			z = self.room.coords.z
		},
		["e"] = {
			x = self.room.coords.x + self.step,
			y = self.room.coords.y,
			z = self.room.coords.z
		},
		["ne"] = {
			x = self.room.coords.x + self.step,
			y = self.room.coords.y + self.step,
			z = self.room.coords.z
		},
		["se"] = {
			x = self.room.coords.x + self.step,
			y = self.room.coords.y - self.step,
			z = self.room.coords.z
		},
		["nw"] = {
			x = self.room.coords.x - self.step,
			y = self.room.coords.y + self.step,
			z = self.room.coords.z
		},
		["sw"] = {
			x = self.room.coords.x - self.step,
			y = self.room.coords.y - self.step,
			z = self.room.coords.z
		},
		["u"] = {
			x = self.room.coords.x,
			y = self.room.coords.y,
			z = self.room.coords.z + 1
		},
		["d"] = {
			x = self.room.coords.x,
			y = self.room.coords.y,
			z = self.room.coords.z - 1
		},
	}
	return output[dir]
end

--[[ Sprawdz czy w tym kierunku, znajduja sie te koordynaty ]]--
function mapper:coordsMatchDirection(dir, x, y, z)
	if dir == "s" and
		x == self.room.coords.x and
		y < self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "n" and
		x == self.room.coords.x and
		y > self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "e" and
		x > self.room.coords.x and
		y == self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "w" and
		x < self.room.coords.x and
		y == self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "nw" and
		x < self.room.coords.x and
		y > self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "ne" and
		x > self.room.coords.x and
		y > self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "sw" and
		x < self.room.coords.x and
		y < self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "se" and
		x > self.room.coords.x and
		y < self.room.coords.y and
		z == self.room.coords.z then
		return true
	elseif dir == "d" and
		x == self.room.coords.x and
		y == self.room.coords.y and
		z < self.room.coords.z then
		return true
	elseif dir == "u" and
		x == self.room.coords.x and
		y == self.room.coords.y and
		z > self.room.coords.z then
		return true
	end
end
