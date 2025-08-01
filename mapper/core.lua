mudlet = mudlet or {}
mudlet.mapper_script = true
mapper = mapper or {}
mapper.events = mapper.events or {}
mapper.gmcp = {}
mapper.step = 2
mapper.mode = 1
mapper.drawing = false
mapper.file = "killer_mapa.dat"
mapper.room = {}
mapper.gmcp = {}
mapper.draw = nil
mapper.nogmcp = 200000 -- start nogmcp id: las faktoria
mapper.lastKnownID = nil -- zmeczony, bramy, cofnij
mapper.gmcpNextLocation = nil -- zsiadz ze statku, wyjdz z dylizansu
mapper.spe2dir = {} -- special exit dla dir
mapper.dir2spe = {} -- dir dla special exit
mapper.dir2door = {} -- dir dla drzwi
mapper.color2sector = {
	["miasto"] = 272,
	["jaskinia"] = 272,
	["wewnatrz"] = 259,
	["podziemia"] = 272,
	["kopalnia"] = 272,
	["laka"] = 258,
	["trawa"] = 258,
	["park"] = 258,
	["las"] = 262,
	["puszcza"] = 262,
	["pole"] = 267,
	["plaza"] = 267,
	["step"] = 258,
	["gory"] = 271,
	["jezioro"] = 260,
	["rzeka"] = 260,
	["ocean"] = 260,
	["bagno"] = 261,
	["pustynia"] = 267,
	["góry"] = 271,
	["łąka"] = 258,
	["plaża"] = 267,
	["wzgórza"] = 263,
}
mapper.short2en = { --> mapper:getRoomViaExit, mapper:connectRooms
	["n"]    = "north",
	["s"]    = "south",
	["w"]    = "west",
	["e"]    = "east",
	["ne"]   = "northeast",
	["nw"]   = "northwest",
	["se"]   = "southeast",
	["sw"]   = "southwest",
	["u"]    = "up",
	["d"]    = "down",
}
mapper.en2short = { --> mapper:helperGetExitsForComparison, mapper:getCommandViaDir
	["north"]     = "n",
	["south"]     = "s",
	["west"]      = "w",
	["east"]      = "e",
	["northeast"] = "ne",
	["northwest"] = "nw",
	["southeast"] = "se",
	["southwest"] = "sw",
	["up"]        = "u",
	["down"]      = "d",
}
mapper.pl2short = { --> mapper:convertExits
	["polnoc"]            = "n",
	["poludnie"]          = "s",
	["wschod"]            = "e",
	["zachod"]            = "w",
	["polnocny-zachod"]   = "nw",
	["polnocny-wschod"]   = "ne",
	["poludniowy-zachod"] = "sw",
	["poludniowy-wschod"] = "se",
	["gora"]              = "u",
	["dol"]               = "d",
}
mapper.shortMirror = { --> events.lua
	["n"]    = "s",
	["s"]    = "n",
	["w"]    = "e",
	["e"]    = "w",
	["ne"]   = "sw",
	["nw"]   = "se",
	["se"]   = "nw",
	["sw"]   = "ne",
	["u"]    = "d",
	["d"]    = "u",
}

function mapper:init()
	self:unbindEvents()
	self:ui(settings:get("mapperWidth"), settings:get("mapperHeight"))
	self:centerGMCP()
	--self:addRoom(1, 514, 0, 0, 0) -- start point
end

function mapper:detectGMCP()
	if not self.gmcp.id then
		self:centerGMCP(true)
	end
end

function mapper:setGMCP()
	if gmcp.Room then
		self.gmcp.id = gmcp.Room.Info.num
		self.gmcp.exits = self:convertExits(gmcp.Room.Info.exits)
		self.gmcp.short = gmcp.Room.Info.name
		return true
	end
end

function mapper:center(id)
	if id and roomExists(id) then
		local x, y, z = getRoomCoordinates(id)
		self.room.id = id
    self.room.doors = getDoors(id)
		self.room.area = getRoomArea(id)
		self.room.coords = {x = x, y = y, z = z}
		self.room.exits = getRoomExits(self.room.id)
		centerview(id)
	end
end

function mapper:centerGMCP(msg)
	if self:setGMCP() then
		self.lastKnownID = self.gmcp.id
		self:center(self.gmcp.id)
		if msg then
			printer:success("Aktualizacja lokacji",
				"Lokacja ustawiona z GMCP (ID: "..self.gmcp.id..")"
			)
		end
	end
end

function mapper:matchRose(dir)
	if dir == "n" or dir == "s" or dir == "w" or dir == "e" or dir == "nw" or dir == "ne" or dir == "sw" or dir == "se" then
		return true
	end
end

function mapper:matchZ(dir)
	if dir == "u" or dir == "d" then
		return true
	end
end

function mapper:setStep(step)
	step = tonumber(step)
	if step then
		self.step = step
		printer:success("Mapper",
			"Step ustawiony na "..self.step
		)
		self:centerGMCP()
	end
end

function mapper:setMode(mode)
	if not mode then
		printer:success("Mapper",
			"Aktualny tryb: "..self.mode
		)
	end
	if mode == "1" then
		self.mode = 1
		printer:success("Mapper",
			"Mapper ustawiony na jednostronne polaczenia"
		)
		self:centerGMCP()
	end
	if mode == "2" then
		self.mode = 2
		printer:success("Mapper",
			"Mapper ustawiony na obustronne polaczenia (Trakty)"
		)
		self:centerGMCP()
	end
	if mode == "3" then
		self.mode = 3
		printer:success("Mapper",
			"Mapper ustawiony na lokacje bez GMCP"
		)
	end
	if mode == "4" then
		self.mode = 4
		printer:success("Mapper",
			"Mapper ustawiony na laczenie lokacji przez GMCP (Laki)"
		)
	end
	if mode == "5" then
		self.mode = 5
		printer:success("Mapper",
			"Mapper ustawiony na brak ograniczen kierunkow"
		)
	end
end

function mapper:getRoomInfo()
	local info = {
		{
			'ID gmcp',
			self.gmcp.id
		},
		{
			"Opis gmcp",
			utils:replacePolish(self.gmcp.short)
		},
	}
	local water = getRoomUserData(self.room.id, "water")
	if water ~= "" then
		table.insert(info, {
			'Woda',
			water
		})
	end
	local gate = getRoomUserData(self.room.id, "gate")
	if gate ~= "" then
		table.insert(info, {
			'Brama',
			gate
		})
	end
	local block = getRoomUserData(self.room.id, "block")
	if block ~= "" then
		local exits = utils:split(utils:ltrim(block, "#"), "#")
		table.insert(info, {
			'Blokuj',
			exits
		})
	end
	local bind = getRoomUserData(self.room.id, "bind")
	if bind ~= "" then
		local binds = utils:split(bind, "#")
		table.insert(info, {
			'Bindy',
			binds
		})
	end
	if next(self.room) then
		local areaID, areaName = self:getArea(self.room.area)
		table.insert(info, {
			'Obszar',
			areaName.." ("..areaID..")"
		})
		table.insert(info, {
			'Koordynaty',
			"("..self.room.coords.x..", "..self.room.coords.y..", "..self.room.coords.z..")"
		})
	else
		printer:error("Aktualna lokacja", "Nie mozna odnalezc lokacji na mapie!")
	end
	printer:roomInfo(info)
end

function mapper:convertExits(arr)
	--[[
	{
	  {
	    closed = false,
	    door = false,
	    name = "",
	    dir = "D"
	  }
	}
	]]--
	self.dir2spe = {}
	self.spe2dir = {}
	self.dir2door = {}
	local output = {}
	if arr then
		for i = 1, #arr do
			if arr[i].dir then
				output[i] = arr[i].dir:lower()
				if arr[i].name ~= "" then
					self.dir2spe[output[i]] = arr[i].name:lower()
					self.spe2dir[arr[i].name:lower()] = output[i]
				end
				if arr[i].door then
					-- jesli jest to przejscie specjalnie
					if self.dir2spe[output[i]]  then
						self.dir2door[self.dir2spe[output[i]]] = true
					-- jesli to przejscie zwykle
					else
						self.dir2door[output[i]] = true
					end
					if output[i] == "u" then
						self.dir2door["up"] = true
					end
					if output[i] == "d" then
						self.dir2door["down"] = true
					end
				end
			end
		end
	end
	return output
end

function mapper:start()
	if self.drawing == false then
		self.drawing = true
		printer:success("Mapowanie", "Maper wlaczony, pomocnik wlaczony")
	end
end

function mapper:stop()
	if self.drawing then
		self.drawing = false
		printer:error("Mapowanie", "Maper wylaczony, pomocnik wylaczony")
	end
end

function mapper:save()
	local file = getMudletHomeDir().."/"..self.file
	local savedok = saveMap(file)
	if not savedok then
		printer:error("Zapisanie mapy", "Wystapil blad, nie udalo sie zapisac mapy")
	else
		self:reload()
		printer:success("Zapisanie mapy",
			{
				"Mapa zapisana poprawnie!",
				file
			}
		)
	end
end

function mapper:reload()
	self:load()
	mapper:center(self.room.id)
end

function mapper:load()
	local res = loadMap(getMudletHomeDir().."/"..self.file)
	if res then
		printer:success("Ladowanie mapy",
			{
				"Mapa zaladowana poprawnie!",
				file
			}
		)
	else
		printer:error("Ladowanie mapy",
			{
				"Blad przy ladowaniu mapy!",
				"Sprawdz uprawnienia pliku"
			}
		)
	end
end

function mapper:ui(mapperWidth, mapperHeight)
	setBorderRight(mapperWidth)
	self.mapperContainer = nil
	self.mapperContainer = Geyser.Container:new({
		x = -mapperWidth,
		y = 0,
		width = mapperWidth,
		height = mapperHeight,
		name = "mapperContainer"
	})
	self.window = nil
	self.window = Geyser.Mapper:new({
		name = "mapper",
		x = 0,
		y = 0,
		width = "100%",
		height = "100%",
	}, self.mapperContainer)
end

function mapper:unbindEvents()
	for name, id in pairs(self.events) do
		if id then
			killAnonymousEventHandler(id)
		end
	end
end

function mapper:gate(command)
	setRoomUserData(self.room.id, "gate", command)
	printer:success("Mapper",
		"Dodano brame za pomoca komendy '"..command.."'"
	)
end
mapper:init()
