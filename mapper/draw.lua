function mapper:addStub(dir)
	if self.room.id then
		setExitStub(self.room.id, dir, true)
	end
end

function mapper:addRoom(areaID, roomID, x, y, z)
	addRoom(roomID)
	setRoomCoordinates(roomID, x, y, z)
	setRoomArea(roomID, areaID)
	return roomID
end

function mapper:connectRooms(from, to, dir)
	if self.short2en[dir] then
		dir = self.short2en[dir]
	end
	setExit(from, to, dir)
end

function mapper:connectAutoViaDir(dir)
	if dir and next(dir) then
		local roomID = nil
		for i=1, #dir do
			roomID = self:getRoomViaCoords(dir[i])
			if roomID then
				setExit(self.room.id, roomID, dir[i])
				setExit(roomID, self.room.id, self.shortMirror[dir[i]])
			end
		end
	end
end

function mapper:addLine(dir)
	if self.drawing and self:matchRose(dir) then
		local command, roomID = self:getCommandViaDir(dir)
		local c = self:convertCoords(dir)
		local colors = getCustomEnvColorTable()
		if command then
			local dst = getRoomArea(roomID)
			local src = getRoomArea(self.room.id)
			if dst ~= src then
				addCustomLine(self.room.id, {{c.x, c.y, c.z}}, command, "dot line", colors[getRoomEnv(roomID)], true)
			else
					self:addCustomLine(self.room.id, roomID, command)
			end
		else
			command, roomID = self:getCommandViaMeta(dir)
			if command then
				addCustomLine(self.room.id, {{c.x, c.y, c.z}}, command, "dot line", colors[getRoomEnv(roomID)], true)
			end
		end
	end
end

function mapper:addCustomLine(from, to, command)
	addCustomLine(from, to, command, "dot line", {220, 220, 220}, false)
end

function mapper:generateRoom(from, to, dir, command)
	local coords = self:convertCoords(dir)
	local roomID = self:addRoom(self.room.area, to, coords.x, coords.y, coords.z)
	if roomID and command then
		self:connectRooms(from, roomID, command)
	end
	return roomID
end

function mapper:clearMeta(dir)
	if self.room.id then
		clearRoomUserDataItem(self.room.id, dir)
		printer:success("Usuwam mete",
			"Usunieto meta tag "..dir.."!"
		)
	end
end

function mapper:connectViaDirection(dir, spe)
	if  self.drawing and (self:matchRose(dir) or self:matchZ(dir)) then
		if spe then
			spe = spe:sub(2)
			local exits = getSpecialExitsSwap(self.room.id)
			if exits[spe] then
				setRoomUserData(self.room.id, dir, spe.."="..exits[spe])
				printer:success("Polacz lokacje",
					"Polaczono lokacje za pomoca "..dir.." i "..spe.." z "..exits[spe].."!"
				)
			end
		else
			roomID = self:getRoomViaCoords(dir)
			if roomID then
				self:connectRooms(self.room.id, roomID, dir)
				printer:success("Polacz lokacje",
					"Polaczono lokacje za pomoca "..dir.."!"
				)
			end
		end
	end
end

function mapper:addTemplate(name, dir)
	if self.drawing and (self:matchRose(dir) or self:matchZ(dir)) then
		if name == "poi" then
			roomID = self:getRoomViaCoords(dir)
			if roomID then
				self:addSpecialExit(self.room.id, roomID, "wyjscie")
				self:colorRoom(name)
				printer:success("Specjalne przejscie",
					"Polaczono lokacje specjalnym przejsciem 'wyjscie' na "..dir.." (Szablon poi)!"
				)
			end
		end
	end
end

function mapper:addSpecialExitAndRoom(dir, command)
	if self.drawing and (self:matchRose(dir) or self:matchZ(dir)) then
		roomID = self:getRoomViaCoords(dir)
		if roomID then
			self:addSpecialExit(self.room.id, roomID, command)
			printer:success("Specjalne przejscie",
				"Polaczono lokacje specjalnym przejsciem '"..command.."' na "..dir.." !"
			)
			-- doors killers start
			local doors = self.dir2door[dir]
			if doors then
				setDoor(self.room.id, command, 2)
			end
			-- doors killers end
			send(command)
		else
			self.draw = {}
			self.draw.from = self.room.id
			self.draw.dir = dir
			self.draw.command = command
			self.draw.special = true
			printer:success("Specjalne przejscie",
				"Polaczono lokacje specjalnym przejsciem '"..command.."' na "..dir.." !"
			)
			send(command)
		end
	end
end

function mapper:addSpecialExit(from, to, command)
	addSpecialExit(from, to, command)
end

function mapper:generateRoomUp(dir)
	if self.drawing and self:matchRose(dir) then
		local roomID = self:getRoomViaCoords(dir)
		if roomID then
			self:connectRooms(self.room.id, roomID, "up")
		else
			self.draw = {}
			self.draw.new = true
			self.draw.from = self.room.id
			self.draw.dir = dir
			self.draw.command = "up"
		end
		send("u")
	end
end

function mapper:generateRoomDown(dir)
	if self.drawing and self:matchRose(dir) then
		local roomID = self:getRoomViaCoords(dir)
		if roomID then
			self:connectRooms(self.room.id, roomID, "down")
		else
			self.draw = {}
			self.draw.new = true
			self.draw.from = self.room.id
			self.draw.dir = dir
			self.draw.command = "down"
		end
		send("d")
	end
end

function mapper:emptyRoom(dir, roomID)
	if self.drawing and self:matchRose(dir) then
		local coords = self:convertCoords(dir)
		if roomID == "0" then
			roomID = createRoomID(self.nogmcp)
		end
		self:addRoom(self.room.area, roomID, coords.x, coords.y, coords.z)
	end
end

function mapper:label(dir, text)
	if self.drawing and self:matchRose(dir) then
		local fr, fg, fb = 255, 255, 255
		local br, bg, bb = 0, 0, 0
		local coords = self:convertCoords(dir)
		createMapLabel(
			self.room.area,
			text,
			coords.x, coords.y, coords.z,
			fr, fg, fb,
			br, bg, bb,
			0,
			20,
			true,
			true
		)
	end
end

function mapper:colorRoom(color)
	--if self.drawing then
		local arr = {
			["poi"] = 266,
			["chata"] = 259,
			["las"] = 258,
			["gory"] = 263,
			["droga"] = 257,
			["woda"] = 268,
			["agro"] = 261,
			["laka"] = 262,
			["tren"] = 266,
			["dol"] = 269,
			["gora"] = 269,
 			["?"] = 270
		}
		if arr[color] then
			setRoomEnv(self.room.id, arr[color])
		end
	--end
	--rounded rooms
	--local r,g,b = unpack(color_table[color])
	--highlightRoom(self.currentRoomID, r,g,b, r, g, b, 0, 255, 255)
end


--[[
Wewnątrz
Miasto
Pole
Las
Wzgórza
Góry
Woda pływ
Woda niep
Powietrze
Pustynia
Puszcza
Bagno
Wys góry
Podziemia
Jaskinia
Tundra
Podziemia naturalne
Droga
Rzeka
Jezioro
Morze
Ocean
Lawa
Ruchome piaski
Gorące źródła
Lodowiec
Arktyczny ląd
Ścieżka
Plaża
Eden
Sawanna
Trawa
Step
Pod wodą
Górska ścieżka
Plac
Ciemna woda
Park
Podziemne jezioro
Wydmy
Arena
Łąka
Stroma ścieżka
Błotna ścieżka
Podziemna droga
Pustynna droga
Kopalnia
Ruiny

]]--
