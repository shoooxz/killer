profile = profile or {}
profile.file = nil
profile.list = profile.list or {}
profile.func = {
	["gornik"] = function(val)
		val = tonumber(val)
		if miner:toolExists(val) then
			profile.list.miner = val
			profile:save()
		else
			printer:one("Opcje", "ID narzedzia nie istnieje")
		end
	end,
	["pojemnik"] = function(val)
		val = tonumber(val)
		if inventory:bagExists(val) then
			profile.list.bag = val
			profile:save()
		else
			printer:one("Opcje", "ID pojemnika nie istnieje")
		end
	end,
	["styl"] = function(val)
		val = tonumber(val)
		if inventory:styleExists(val) then
			profile.list.style = val
			profile:save()
		else
			printer:one("Opcje", "ID stylu nie istnieje")
		end
	end,
	["bron"] = function(val)
		val = tonumber(val)
		if inventory:weaponExists(val) then
			profile.list.weapon = val
			profile:save()
		else
			printer:one("Opcje", "ID broni nie istnieje")
		end
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
	end,
	["filtr_bron"] = function(val)
		if val == "0" then
			profile.list.filter_weapon = 0
			profile:save()
			return
		end
		local arr = utils:split(val, ",")
		for i=1, #arr do
			if not inventory.filter:weaponExists(arr[i]) then
				printer:one("Opcje", "ID "..arr[i].." filtru broni nie istnieje")
				return
			end
		end
		profile.list.filter_weapon = arr
		profile:save()
	end,
}

function profile:init(name)
	if not name then return false end
	local msg = name..", profil zostal zaladowany, mozesz go modyfikowac w /opcje"
	self.file = getMudletHomeDir().."/"..name..".lua"
	self.last = name
	if io.exists(self.file) then
		table.load(self.file, self.list)
	else
		local default = {
			["miner"] = 1,
			["bag"] = 1,
			["style"] = 1,
			["weapon"] = 1,
			["filter_weapon"] = 0,
			["stats_progress"] = 0,
			["mode"] = 0,
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
