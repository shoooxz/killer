profile = profile or {}
profile.file = nil
profile.list = profile.list or {}
profile.default = {
	["asopener"] = "",
	["kiopener"] = "",
	["fclass"] = "",
	["sclass"] = "",
	["kill"] = "kill",
	["buffbasic"] = {},
	["buffbasic2"] = {},
	["follower"] = 0,
	["fly"] = "float",
	["master"] = "Thalorian",
	["bag"] = "torba",
	["mh"] = "miecz",
	["oh"] = "",
	["stats_progress"] = 0,
	["mode"] = 1,
	["walker"] = 10,
	["water"] = "butla",
	["food"] = "jablko",
	["sub"] = "Link",
	["a1"] = "",
	["a2"] = "",
	["a3"] = "",
	["a4"] = "",
	["a5"] = "",
	["a6"] = "",
	["a7"] = "",
	["a8"] = "",
	["a9"] = "",
	["a10"] = "",
	["a11"] = "",
	["a12"] = "",
	["a13"] = "",
	["a14"] = "",
	["ass"] = 0,
}
profile.func = {
	["ass"] = function(val)
		  val = tonumber(val)
			profile.list.ass = val
			profile:save()
	end,
	["asopener"] = function(val)
			profile.list.asopener = val
			profile:save()
	end,
	["kiopener"] = function(val)
			profile.list.kiopener = val
			profile:save()
	end,
	["fclass"] = function(val)
			profile.list.fclass = val
			profile:save()
	end,
	["sclass"] = function(val)
			profile.list.sclass = val
			profile:save()
	end,
	["kill"] = function(val)
			profile.list.kill = val
			profile:save()
	end,
	["buffbasic2"] = function(val)
			profile.list.buffbasic2 = val
			profile:save()
	end,
	["buffbasic"] = function(val)
			profile.list.buffbasic = val
			profile:save()
	end,
	["follower"] = function(val)
			profile.list.follower = val
			profile:save()
	end,
	["fly"] = function(val)
			profile.list.fly = val
			profile:save()
	end,
	["master"] = function(val)
			profile.list.master = val
			profile:save()
	end,
	["cel"] = function(val)
			profile.list.sub = val
			profile:save()
	end,
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

function profile:onProfileLoaded()
	state.sub = profile:get("sub")
	-- load actions
  footer:actionLoad(1, profile:get("a1"))
	footer:actionLoad(2, profile:get("a2"))
	footer:actionLoad(3, profile:get("a3"))
	footer:actionLoad(4, profile:get("a4"))
	footer:actionLoad(5, profile:get("a5"))
	footer:actionLoad(6, profile:get("a6"))
	footer:actionLoad(7, profile:get("a7"))
	footer:actionLoad(8, profile:get("a8"))
	footer:actionLoad(9, profile:get("a9"))
	footer:actionLoad(10, profile:get("a10"))
	footer:actionLoad(11, profile:get("a11"))
	footer:actionLoad(12, profile:get("a12"))
	footer:actionLoad(13, profile:get("a13"))
	footer:actionLoad(14, profile:get("a14"))
end

function profile:getName()
	return self.name
end

function profile:init(name)
	if not name then return false end
	self.name = name
	local msg = name..", profil zostal zaladowany, mozesz go modyfikowac w /opcje"
	self.file = getMudletHomeDir().."/"..name..".lua"
	self.last = name
	if io.exists(self.file) then
		table.load(self.file, self.list)
	else
		-- INIT NEW PROFILE
		self:save(self.default)
		self.list = self.default
		msg = name..", utworzono twoj nowy profil, mozesz go modyfikowac w /opcje"
	end
	tempTimer(.3, function ()
		printer:one("Profil", msg)
		profile:onProfileLoaded()
		if self.list.mode > 0 then
			-- TODO jak wejda mody dodac ?
			--mode.exec[mode.order[self.list.mode]].func()
		end
	end)
end

function profile:get(name)
	if self.list[name] then
			if name == "kiopener" or name == "asopener" then
				return string.gsub(self.list[name], "#", ";")
			else
				return self.list[name]
			end
	end
end


function profile:set(name, val)
	if self.default[name] then
		self.list[name] = val
		self:save()
	else
		printer:error("Profil", "Nie mozna zapisac zmiennej!")
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
