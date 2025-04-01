profile = profile or {}
profile.file = nil
profile.list = profile.list or {}
profile.func = {
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
	["s1"] = function(val)
			profile.list.s1 = val
			footer:setFastSkillLabel(1, val);
			profile:save()
	end,
	["s2"] = function(val)
			profile.list.s2 = val
			footer:setFastSkillLabel(2, val)
			profile:save()
	end,
	["s3"] = function(val)
			profile.list.s3 = val
			footer:setFastSkillLabel(3, val)
			profile:save()
	end,
	["s4"] = function(val)
			profile.list.s4 = val
			footer:setFastSkillLabel(4, val)
			profile:save()
	end,
	["s5"] = function(val)
			profile.list.s5 = val
			footer:setFastSkillLabel(5, val)
			profile:save()
	end,
	["s6"] = function(val)
			profile.list.s6 = val
			footer:setFastSkillLabel(6, val)
			profile:save()
	end,
	["s7"] = function(val)
			profile.list.s7 = val
			footer:setFastSkillLabel(7, val)
			profile:save()
	end,
	["s8"] = function(val)
			profile.list.s8 = val
			footer:setFastSkillLabel(8, val)
			profile:save()
	end,
	["s9"] = function(val)
			profile.list.s9 = val
			footer:setFastSkillLabel(9, val)
			profile:save()
	end,
	["s10"] = function(val)
			profile.list.s10 = val
			footer:setFastSkillLabel(10, val)
			profile:save()
	end,
	["k1"] = function(val)
			profile.list.k1 = val
			footer:setFastSpellLabel(1, val);
			profile:save()
	end,
	["k2"] = function(val)
			profile.list.k2 = val
			footer:setFastSpellLabel(2, val)
			profile:save()
	end,
	["k3"] = function(val)
			profile.list.k3 = val
			footer:setFastSpellLabel(3, val)
			profile:save()
	end,
	["k4"] = function(val)
			profile.list.k4 = val
			footer:setFastSpellLabel(4, val)
			profile:save()
	end,
	["k5"] = function(val)
			profile.list.k5 = val
			footer:setFastSpellLabel(5, val)
			profile:save()
	end,
	["k6"] = function(val)
			profile.list.k6 = val
			footer:setFastSpellLabel(6, val)
			profile:save()
	end,
	["k7"] = function(val)
			profile.list.k7 = val
			footer:setFastSpellLabel(7, val)
			profile:save()
	end,
	["k8"] = function(val)
			profile.list.k8 = val
			footer:setFastSpellLabel(8, val)
			profile:save()
	end,
	["k9"] = function(val)
			profile.list.k9 = val
			footer:setFastSpellLabel(9, val)
			profile:save()
	end,
	["k10"] = function(val)
			profile.list.k10 = val
			footer:setFastSpellLabel(10, val)
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
	-- spells
	footer:setFastSpellLabel(1, profile:get("k1"));
	footer:setFastSpellLabel(2, profile:get("k2"));
	footer:setFastSpellLabel(3, profile:get("k3"));
	footer:setFastSpellLabel(4, profile:get("k4"));
	footer:setFastSpellLabel(5, profile:get("k5"));
	footer:setFastSpellLabel(6, profile:get("k6"));
	footer:setFastSpellLabel(7, profile:get("k7"));
	footer:setFastSpellLabel(8, profile:get("k8"));
	footer:setFastSpellLabel(9, profile:get("k9"));
	footer:setFastSpellLabel(10, profile:get("k10"));
	-- skills
	footer:setFastSkillLabel(1, profile:get("s1"));
	footer:setFastSkillLabel(2, profile:get("s2"));
	footer:setFastSkillLabel(3, profile:get("s3"));
	footer:setFastSkillLabel(4, profile:get("s4"));
	footer:setFastSkillLabel(5, profile:get("s5"));
	footer:setFastSkillLabel(6, profile:get("s6"));
	footer:setFastSkillLabel(7, profile:get("s7"));
	footer:setFastSkillLabel(8, profile:get("s8"));
	footer:setFastSkillLabel(9, profile:get("s9"));
	footer:setFastSkillLabel(10, profile:get("s10"));
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
		local default = {
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
			["walker"] = 1,
			["water"] = "butla",
			["food"] = "jablko",
			["sub"] = "Link",
			["k1"] = "Magic Missile",
			["k2"] = "Chill Touch",
			["k3"] = "Lightning Bolt",
			["k4"] = "Vampiric Touch",
			["k5"] = "Force Bolt",
			["k6"] = "Fireball",
			["k7"] = "Horrid Wilting",
			["k8"] = "Orb of Entropy",
			["k9"] = "Banshee",
			["k10"] = "Nexus",
			["s1"] = "Wardance",
			["s2"] = "Disarm",
			["s3"] = "Stun",
			["s4"] = "Bash",
			["s5"] = "Cleave",
			["s6"] = "Vertical",
			["s7"] = "Overwhelming",
			["s8"] = "Parry",
			["s9"] = "Kick",
			["s10"] = "Bandage",
 		}
		self:save(default)
		self.list = default
		msg = name..", utworzono twoj nowy profil, mozesz go modyfikowac w /opcje"
	end
	tempTimer(.3, function ()
		printer:one("Profil", msg)
		profile:onProfileLoaded()
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

--[[
Wojownik, Złodziej, Barbarzyńca, Czarny Rycerz, Nomad, Mag, Druid, Kleryk, Paladyn
 ]]--
