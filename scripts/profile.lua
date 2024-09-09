profile = profile or {}
profile.file = nil
profile.list = profile.list or {}
profile.func = {
	["jedzenie"] = function(val)
			profile.list.food = val
			profile:save()
	end,
	["woda"] = function(val)
			profile.list.water = val
			profile:save()
	end,
	["pojemnik"] = function(val)
			profile.list.bag = val
			profile:save()
	end,
	["mh"] = function(val)
			profile.list.mh = val
			profile:save()
	end,
	["oh"] = function(val)
			if val == "0" then
				profile.list.oh = ""
			else
				profile.list.oh = val
			end
			profile:save()
	end,
	["chodzik"] = function(val)
		  val = tonumber(val)
			profile.list.walker = val
			profile:save()
	end,
	["tryb"] = function(val)
		val = tonumber(val)
		if val == 0 then
			profile.list.mode = 0
			profile:save()
		elseif mode.order[val] then
			profile.list.mode = val
			profile:save()
		else
			printer:one("Opcje", "Podany tryb nie istnieje")
		end
	end
}

function profile:init(name)
	if not name then return false end
	self.name = name
	local msg = name..", profil zostal zaladowany, mozesz go modyfikowac w /opcje"
	self.file = getMudletHomeDir().."/"..name..".lua"
	self.last = name
	if io.exists(self.file) then
		table.load(self.file, self.list)
	else
		local default = {
			["bag"] = "torba",
			["mh"] = "miecz",
			["oh"] = "",
			["stats_progress"] = 0,
			["mode"] = 0,
			["walker"] = 1,
			["water"] = "buklak",
			["food"] = "racja"
		}
		self:save(default)
		self.list = default
		msg = name..", utworzono twoj nowy profil, mozesz go modyfikowac w /opcje"
	end
	tempTimer(.3, function ()
		printer:one("Profil", msg)
		if self.list.mode > 0 then
			mode.exec[mode.order[self.list.mode]].func()
		end
	end)
end

function profile:get(name)
	if self.list[name] then
		return self.list[name]
	end
end

function profile:set(name, val)
	if self.list[name] then
		self.list[name] = val
		self:save()
	end
end

-- /opcje [opccja] [value]
function profile:change(match)
	if match then
		local func, arg = match[2], match[3]
		if func and arg then
			if self.func[func] then
				self.func[func](arg)
			end
		end
	end
end

function profile:save(arr)
	if arr then
		table.save(self.file, arr)
	else
		table.save(self.file, self.list)
	end
end

function profile:loadLast()
	self:init(self.last)
end
