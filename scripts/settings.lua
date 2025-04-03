settings = settings or {}
settings.file = getMudletHomeDir().."/settings.lua"
settings.list = settings.list or {}
settings.dpiScaling = 100
settings.func = {
	["szerokosc"] = function(val)
		settings.list.mainWindowWidth = tonumber(val)
		settings:save()
		setMainWindowSize(settings:get("mainWindowWidth"), settings:get("mainWindowHeight"))
	end,
	["wysokosc"] = function(val)
		settings.list.mainWindowHeight = tonumber(val)
		settings:save()
		setMainWindowSize(settings:get("mainWindowWidth"), settings:get("mainWindowHeight"))
	end,
	["mapper_szerokosc"] = function(val)
		settings.list.mapperWidth = tonumber(val)
		settings:save()
		mapper:ui(settings:get("mapperWidth"), settings:get("mapperHeight"))
		state:createLocationState()
	end,
	["mapper_wysokosc"] = function(val)
		settings.list.mapperHeight = tonumber(val)
		settings:save()
		mapper:ui(settings:get("mapperWidth"), settings:get("mapperHeight"))
		state:createLocationState()
	end,
	["skalowanie_dpi"] = function(val)
		settings.list.dpiScaling = tonumber(val)
		settings:save()
		settings:setlyDpiScaling()
		mapper:ui(settings:get("mapperWidth"), settings:get("mapperHeight"))
		state:createLocationState()
	end,
}

function settings:init()
	if io.exists(self.file) then
	 	table.load(self.file, self.list)
	else
		local default = {
			["mainWindowWidth"] = 1920,
			["mainWindowHeight"] = 1080,
			["mapperWidth"] = 700,
			["mapperHeight"] = 400,
			["dpiScaling"] = 100,
		}
		self:save(default)
		self.list = default
	end
	self:setlyDpiScaling()
end

function settings:applyDpiScaling(val)
	return val/self.dpiScaling
end

function settings:setlyDpiScaling()
	self.dpiScaling = self:get("dpiScaling")/100
end

function settings:get(name, scaled)
	if self.list[name] then
		if (name == "mapperWidth" or name == "mapperHeight" or name == "mainWindowWidth" or name == "mainWindowHeight") and not scaled then
				return self.list[name]/self.dpiScaling
		else
				return self.list[name]
		end
	end
end

function settings:change(match)
	if match then
		local func, arg = match[2], match[3]
		if func and arg then
			if self.func[func] then
				self.func[func](arg)
			end
		end
	end
end

function settings:save(arr)
	if arr then
		table.save(self.file, arr)
	else
		table.save(self.file, self.list)
	end
end
