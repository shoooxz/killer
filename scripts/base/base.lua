base = base or {}
base.jsonTeacher = {}
base.jsonBook = {}
base.jsonSpell = {}
base.jsonSkill = {}
base.spellDictionary = {}
base.spellSchool = {}
base.spellDefensive = {}
base.spellOffensive = {}
base.spellHeal = {}
base.skipDebuff = true
base.spellDictionaryFull = {}
base.skillDictionaryFull = {}
base.spellClass = {}
base.skillClass = {}
base.effect = {}
--TODO SKILLS klecha, zlodziej i masterki do klechy, nomada i zlodzieja

function base:targetToFancy(tar)
	local out = {
		["TAR_IGNORE"] = "Brak celu",
		["TAR_CHAR_OFFENSIVE"] = "Ofensywny",
		["TAR_CHAR_DEFENSIVE"] = "Defensywny",
		["TAR_CHAR_SELF"] = "Tylko na siebie",
		["TAR_OBJ_INV"] = "Cel obiekt w inventory",
		["TAR_OBJ_CHAR_DEF"] = "Cel obiekt albo postac, defensywny",
		["TAR_OBJ_CHAR_OFF"] = "Cel obiekt albo postac, ofensywny",
		["TAR_OBJ_ROOM"] = "Cel obiekt na lokacji",
		["TAR_OBJ_IGNORE"] = "Na lokacje",
		["TAR_CHAR_HEAL"] = "Regenerujacy",
	}
	return out[tar]
end

function base:schoolToColor(school)
	local out = {
		["Odrzucanie"] = "white",
		["Przemiany"] = "green",
		["Przywolanie"] = "yellow",
		["Poznanie"] = "blue",
		["Zauroczenie"] = "deep_pink",
		["Iluzje"] = "cyan",
		["Inwokacje"] = "red",
		["Nekromancja"] = "dim_grey",
		["Brak"] = "white",
	}
	return out[school]
end

function base:classToColor(long)
	local out = {
		["Wojownik"] = "sienna",
		["Zlodziej"] = "dim_gray",
		["Barbarzynca"] = "ansi_red",
		["Czarny Rycerz"] = "dark_slate_blue",
		["Nomad"] = "khaki",
		["Mag"] = "dodger_blue",
		["Druid"] = "ansi_green",
		["Kleryk"] = "ansi_light_yellow",
		["Paladyn"] = "dark_orange",
	}
	return out[long]
end

function base:rgetClass(long)
	local out = {
		["Wojownik"] = "WOJ",
		["Zlodziej"] = "ZLO",
		["Barbarzynca"] = "BAR",
		["Czarny Rycerz"] = "CZA",
		["Nomad"] = "NOM",
		["Mag"] = "MAG",
		["Druid"] = "DRU",
		["Kleryk"] = "KLE",
		["Paladyn"] = "PAL",
	}
	return out[long]
end

function base:getClass(short)
	local out = {
		["woj"] = "Wojownik",
		["zlo"] = "Zlodziej",
		["bar"] = "Barbarzynca",
		["cza"] = "Czarny Rycerz",
		["nom"] = "Nomad",
		["mag"] = "Mag",
		["dru"] = "Druid",
		["kle"] = "Kleryk",
		["pal"] = "Paladyn",
	}
	return out[short]
end

function base:init()
  self.jsonTeacher = utils:readJson("scripts/base/teachers.json")
  self.jsonBook = utils:readJson("scripts/base/book.json")
  self.jsonSpell = utils:readJson("scripts/base/spell.json")
	self.jsonSkill = utils:readJson("scripts/base/skill.json")
	self.effect = utils:readJson("scripts/base/effect.json")
  self:buildSpellDictionary()
  self:buildSpellDictionaryFull()
	self:buildSkillDictionaryFull()
	self:buildSchool()
	self:buildSkillLevel()
	-- clear memory
	self.jsonSpell = nil
	self.jsonSkill = nil
end

function base:buildSpellDictionary()
  for i=1, #self.jsonSpell do
    local name = self.jsonSpell[i]["name"]
    local first = string.sub(name, 1, 1)
    if not self.spellDictionary[first] then
      self.spellDictionary[first] = {}
    end
    table.insert(self.spellDictionary[first], name)
  end
end

function base:isInSpellDictionary(name)
  local first = string.sub(name, 1, 1)
  if self.spellDictionary[first] then
    return utils:inArray2(name, self.spellDictionary[first])
  end
  return false
end

-- zamien json na slownik i przerzuc dane do kluczy tablicy
function base:buildSpellDictionaryFull()
  for i=1, #self.jsonSpell do
    local name = self.jsonSpell[i]["name"]
    local first = string.sub(name, 1, 1)
    if not self.spellDictionaryFull[first] then
      self.spellDictionaryFull[first] = {}
    end
    self.spellDictionaryFull[first][name] = self.jsonSpell[i]
		--self.spellDictionaryFull[first][name].school =
    -- tutaj dodawac kolejne
  end
end



-- zamien json na slownik i przerzuc dane do kluczy tablicy
function base:buildSkillDictionaryFull()
  for i=1, #self.jsonSkill do
    local name = self.jsonSkill[i]["name"]
    local first = string.sub(name, 1, 1)
    if not self.skillDictionaryFull[first] then
      self.skillDictionaryFull[first] = {}
    end
    --table.insert(, name)
    self.skillDictionaryFull[first][name] = self.jsonSkill[i]
    -- tutaj dodawac kolejne
  end
end

function base:effects()
	local out = {
		["weapon"] = {},
		["shield"] = {},
	}
	for type, eff in pairs(self.effect) do
    if string.find(type, "WEAPON") then
			table.insert(out.weapon, eff)
		end
		if string.find(type, "SHIELD") then
			table.insert(out.shield, eff)
		end
  end
	return out
end

function base:topic(key)
	local topics = {
		["masterki"] = function()  printer:helpWeapon() end,
		["skradanie"] = function()  printer:helpSneak() end,
		["mem"] = function()  printer:helpMem() end,
		["dwuklasowosc"] = function()  printer:helpDualclass() end,
		["kamienie"] = function()  printer:helpStone() end,
		["efekty"] = function()  printer:helpEffects(base:effects()) end,
		["trutki"] = function()  printer:helpEnvenomers(envenomer:getTypes()) end,
	}
	if utils:arrayKeyExists(key, topics) then
		topics[key]()
		return true
	else
		return false
	end
end

function base:help(name)
	if name == "" then
		-- pokaz help instrukcje
		printer:helpIndex()
	else
		name = utils:trim(name)
		-- pokaz tematy
		if not base:topic(name) then
			-- pokaze spell/skill
		  local first = string.sub(name, 1, 1)
			local out = {}
			local found = false
			if self.skillDictionaryFull[first] and self.skillDictionaryFull[first][name] then
				out.meta = self.skillDictionaryFull[first][name]
				found = true
			elseif self.spellDictionaryFull[first] and self.spellDictionaryFull[first][name] then
				out.meta = self.spellDictionaryFull[first][name]
				local arr = {}
				out.meta.additional = {}
				local schol = ""
				if type(out.meta.school) == "table" then
					out.meta.len = string.len(out.meta.school[1])+1
					school = out.meta.school[1]
				else
					out.meta.len = 5
					school = "Brak"
				end
				table.insert(arr, {self:schoolToColor(school), school, ""})
				table.insert(arr, {"white", self:targetToFancy(out.meta.target), ""})
				table.insert(out.meta.additional, arr)
				found = true
			end
			if found then
			  local tb = base:spellSearch(name)
			  out.teacher = tb[1]
			  out.book = tb[2]
			  printer:help(out)
			else
		    printer:error("Help", "Brak spella w bazie!")
			end
		end
	end
end

function base:showPath(room)
  local path = getPath(mapper.room.id, room)
  if path then
    mapper:highlight(speedWalkPath)
  end
end

--[[
odrzucenie  <> przemiany/iluzje
przemiany   <> odrzucanie/nekromacja
przywolanie <> poznanie/inwokacje
zauroczenia <> inwokacje/nekromancja
iluzje      <> inwokacje/nekromacja/odrzucenie
inwokacje   <> zauroczenia/przywolanie
nekromancja <> iluzje/zauroczenia
]]--

function base:schoolSuccess(current, school, reverse1, reverse2, reverse3)
	if current == 0 then return true end
	local firstPass = true
	local secondPass = true
	for i=1, #current do
		if current[i] == "SpellSpec" then
			if current[1] ~= school then
				secondPass = false
			end
		else
			if current[i] == reverse1 or current[i] == reverse2 then
				firstPass = false
			end
			if reverse3 and current[i] == reverse3 then
				firstPass = false
			end
		end
	end
	return firstPass and secondPass
end

function base:generalCheck(circle, spell, school)
	-- niewiadomo czemu dominka przechodzi na ogolnego
	if spell == "domination" then return true end
	local skip5  = {
		"detect undead",
		"spirits armor",
		"mass invis",
		"lesser magic resist",
		"summon lesser meteor",
		"decay",
		"unholy fury",
		"flame lace",
		"psychic scream",
	}
	if circle < 6 then
		if utils:inArray2(spell, skip5) then
			return false
		end
		return true
	else
		for i=1, #school do
			if school[i] == "SpellSpec" then
				return false
			end
		end
		return true
	end
	return false
end

function base:declareSchool(name)
	self.spellClass[name] = {}
	self.spellClass[name]["1"] = {}
	self.spellClass[name]["2"] = {}
	self.spellClass[name]["3"] = {}
	self.spellClass[name]["4"] = {}
	self.spellClass[name]["5"] = {}
	self.spellClass[name]["6"] = {}
	self.spellClass[name]["7"] = {}
	self.spellClass[name]["8"] = {}
	self.spellClass[name]["9"] = {}
end

function base:declareOffensive(name)
	self.spellOffensive[name] = {}
	self.spellOffensive[name]["1"] = {}
	self.spellOffensive[name]["2"] = {}
	self.spellOffensive[name]["3"] = {}
	self.spellOffensive[name]["4"] = {}
	self.spellOffensive[name]["5"] = {}
	self.spellOffensive[name]["6"] = {}
	self.spellOffensive[name]["7"] = {}
	self.spellOffensive[name]["8"] = {}
	self.spellOffensive[name]["9"] = {}
end

function base:declareDefensive(name)
	self.spellDefensive[name] = {}
	self.spellDefensive[name]["1"] = {}
	self.spellDefensive[name]["2"] = {}
	self.spellDefensive[name]["3"] = {}
	self.spellDefensive[name]["4"] = {}
	self.spellDefensive[name]["5"] = {}
	self.spellDefensive[name]["6"] = {}
	self.spellDefensive[name]["7"] = {}
	self.spellDefensive[name]["8"] = {}
	self.spellDefensive[name]["9"] = {}
end

function base:declareNonMage(class, circle)
	if not self.spellClass[class] then
			self.spellClass[class] = {}
			self.spellOffensive[class] = {}
			self.spellDefensive[class] = {}
			self.spellHeal[class] = {}
	end
	if not self.spellClass[class][tostring(circle)] then
			self.spellClass[class][tostring(circle)] = {}
			self.spellOffensive[class][tostring(circle)] = {}
			self.spellDefensive[class][tostring(circle)] = {}
			self.spellHeal[class][tostring(circle)] = {}
	end
end

function base:isSpellHeal(target)
	return (target == "TAR_CHAR_HEAL")
end

function base:isSpellOffensive(target)
	return (target == "TAR_CHAR_OFFENSIVE" or target == "TAR_OBJ_CHAR_OFF")
end

function base:isSpellDefensive(target)
	return (target == "TAR_CHAR_DEFENSIVE" or target == "TAR_OBJ_CHAR_DEF" or target == "TAR_CHAR_SELF" or target == "TAR_IGNORE")
end

function base:getSpellOffensive(fclass, sclass)
	--display(self.spellOffensive["nom"])
end

function base:getSpellDefensive(fclass, sclass)
	--display(fclass, sclass)
	display(self.spellDefensive["nom"])
end

function base:buildSchool()
	local debuff = {
		"faerie fire",
		"weaken",
		"slow",
		"web",
		"increase wounds",
		"maze",
		"dispel magic",
		"dazzling flash",
		"sleep",
		"silence",
		"deafness",
		"hold person",
		"loop",
		"charm person",
		"confusion",
		"hold animal",
		"hold undead",
		"hold monster",
		"hold plant",
		"charm monster",
		"hallucinations",
		"antimagic manacles",
		"brainwash",
		"mental barrier",
		"lower resistance",
		"misfortune",
		"confuse languages",
		"daze",
		"domination",
		"puppet master",
		"flare",
		"poison",
		"entangle",
		"charm animal",
		"corrode",
		"heat metal",
		"chill metal",
		"nature curse",
		"bane",
		"blindness",
		"curse",
		"pyrotechnics",
		"fear",
	}
	local skipIt = {
		"light",
		"detect magic",
		"infravision",
		"comprehend languages",
		"dismiss animal",
		"dismiss insect",
		"lore undead",
		"dismiss plant",
		"change sex",
		"continual light",
		"invisibility",
		"energize",
		"darkvision",
		"dismiss person",
		"faerie fog",
		"farsight",
		"float",
		"waterwalk",
		"water breathing",
		"healing sleep",
		"dismiss outsider",
		"dismiss monster",
		"floating disc",
		"remove paralysis",
		"dismiss undead",
		"dimension door",
		"locate object",
		"pass door",
		"fly",
		"recharge",
		"mass invis",
		"create lesser illusion",
		"astral search",
		"summon",
		"portal",
		"fetch",
		"create greater illusion",
		"nexus",
		"unholy fury",
		"mind fortess",
		"force field",
		"repayment",
		"summon distortion",
		"exile",
		"detect aggressive",
		"detect undead",
		"alarm",
		"wall of mist",
		"share fitness",
		"mass fly",
		"eye of vision",
		"mend golem",
		"slippery floor",
		"wizard eye",
		"sense presence",
		"firefly swarm",
		"shillelagh",
		"create food",
		"animal invisibility",
		"goodbarry",
		"sense fatigue",
		"create spring",
		"flame blade",
		"slow poison",
		"magic fang",
		"ring of vanion",
		"control weather",
		"neutralize poison",
		"animal rage",
		"circle of vanion",
		"command",
		"create symbol",
		"spiritual light",
		"detect evil",
		"detect good",
		"ray of light",
		"undead invisibility",
		"know alignment",
		"consecrate",
		"desecrate",
		"sense life",
		"calm",
		"lesser restoration",
		"restoration",
		"life transfer",
		"hold evil",
		"desert light",
	}
	-- define tables
	self:declareSchool("inwo")
	self:declareOffensive("inwo")
	self:declareDefensive("inwo")
	self:declareSchool("iluz")
	self:declareOffensive("iluz")
	self:declareDefensive("iluz")
	self:declareSchool("nekr")
	self:declareOffensive("nekr")
	self:declareDefensive("nekr")
	self:declareSchool("odrz")
	self:declareOffensive("odrz")
	self:declareDefensive("odrz")
	self:declareSchool("prze")
	self:declareOffensive("prze")
	self:declareDefensive("prze")
	self:declareSchool("przy")
	self:declareOffensive("przy")
	self:declareDefensive("przy")
	self:declareSchool("zaur")
	self:declareOffensive("zaur")
	self:declareDefensive("zaur")
	self:declareSchool("ogol")
	self:declareOffensive("ogol")
	self:declareDefensive("ogol")

-- PETLA JAKUBOWA
	for i=1, #self.jsonSpell do
			if type(self.jsonSpell[i].class) == "table" and next(self.jsonSpell[i].class) then

				-- przygotuj do filtru ofesnywne i defensywne
				local isHeal = self:isSpellHeal(self.jsonSpell[i].target)
				local isOffensive = self:isSpellOffensive(self.jsonSpell[i].target)
				local isDefensive = self:isSpellDefensive(self.jsonSpell[i].target)
				local skip = utils:inArray2(self.jsonSpell[i].name, skipIt) -- skip useless
				local skip2 = (utils:inArray2(self.jsonSpell[i].name, debuff) and self.skipDebuff) -- skip debuffs
				local use = not (skip or skip2)

				for j=1, #self.jsonSpell[i].class do
					local class = self.jsonSpell[i].class[j]
					if class[1] == "mag" then
						if self:schoolSuccess(self.jsonSpell[i].school, "Inwokacje", "Zauroczenie", "Przywolanie") then
							table.insert(self.spellClass["inwo"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "inwo", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Iluzje", "Inwokacje", "Nekromancja", "Odrzucanie") then
							table.insert(self.spellClass["iluz"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "iluz", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Nekromancja", "Iluzje", "Zauroczenie") then
							table.insert(self.spellClass["nekr"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "nekr", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Odrzucanie", "Przemiany", "Iluzje") then
							table.insert(self.spellClass["odrz"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "odrz", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Przemiany", "Odrzucanie", "Nekromancja") then
							table.insert(self.spellClass["prze"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "prze", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Przywolanie", "Poznanie", "Inwokacje") then
							table.insert(self.spellClass["przy"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "przy", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Zauroczenie", "Inwokacje", "Nekromancja") then
							table.insert(self.spellClass["zaur"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "zaur", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
						if self:generalCheck(class[2], self.jsonSpell[i].name, self.jsonSpell[i].school) then
							table.insert(self.spellClass["ogol"][tostring(class[2])], self.jsonSpell[i].name)
							-- filter offensive/defensive
							self:filterSpellType(use, "ogol", isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						end
					else
						self:declareNonMage(class[1], class[2])
						table.insert(self.spellClass[class[1]][tostring(class[2])], self.jsonSpell[i].name)
						-- filter offensive/defensive
						self:filterSpellType(use, class[1], isOffensive, isDefensive, class[2], self.jsonSpell[i].name)
						-- filter heal
						self:filterSpellHeal(use, class[1], isHeal, class[2], self.jsonSpell[i].name)
					end
				end
			end
    -- SZKOLY WYJEBAC ???
		if type(self.jsonSpell[i].school) == "table" and next(self.jsonSpell[i].school) and self.jsonSpell[i].school[1]  then
			local short = self:schoolToShort(self.jsonSpell[i].school[1])
			if not self.spellSchool[short] then
				self.spellSchool[short] = {}
			end
			table.insert(self.spellSchool[short], self.jsonSpell[i]["name"])
		end
	end
end

function base:filterSpellType(use, school, off, def, circle, name)
	if use then
		if off then
			table.insert(self.spellOffensive[school][tostring(circle)], name)
		end
		if def then
			table.insert(self.spellDefensive[school][tostring(circle)], name)
		end
	end
end

function base:filterSpellHeal(use, class, isHeal, circle, name)
	if use then
		if isHeal then
			table.insert(self.spellHeal[class][tostring(circle)], name)
		end
	end
end

function base:schoolToShort(long)
	local out = {
		["Inwokacje"] = "inwo",
		["Iluzje"] = "iluz",
		["Nekromancja"] = "nekr",
		["Odrzucanie"] = "odrz",
		["Przemiany"] = "prze",
		["Przywolanie"] = "przy",
		["Zauroczenie"] = "zaur",
		["Poznanie"] = "pozn",
	}
	return out[long]
end

function base:dif(first, second)
	local reverse = {
		["inwo"] = {"zaur", "przy"},
		["iluz"] = {"inwo", "nekr", "odrz"},
		["nekr"] = {"iluz", "zaur"},
		["odrz"] = {"prze", "iluz"},
		["prze"] = {"odrz", "nekr"},
		["przy"] = {"pozn", "inwo"},
		["zaur"] = {"inwo", "nekr"},
	}
	local removed = {}
	for i=1, 5 do -- do 5 kregu
		for j=1, #self.spellClass[second][tostring(i)] do   -- przez wszystkie spelle z kregu
			local spell = self.spellClass[second][tostring(i)][j]
			for k=1, #reverse[first] do  -- przez wszystkie przeciwne szkoly
				local school = self.spellSchool[reverse[first][k]]
				if utils:inArray2(spell, school) then
					table.insert(removed, spell)
				end
			end
		end
	end
	-- jesli w drugiej jest druid, zawsze usuwany jest na3
	if second == "dru" then
		if not utils:inArray2("nature ally III", removed) then
			table.insert(removed, "nature ally III")
		end
	end
	display(removed)
	--display(self.spellClass)
end

function base:buildSkillLevel()
	for i=1, #self.jsonSkill do
		if type(self.jsonSkill[i].class) == "table" and next(self.jsonSkill[i].class) then
			for j=1, #self.jsonSkill[i].class do
				local class = self.jsonSkill[i].class[j]
				if class[1] then
					if not self.skillClass[class[1]] then
							self.skillClass[class[1]] = {}
					end
					if not self.skillClass[class[1]][tostring(class[2])] then
							self.skillClass[class[1]][tostring(class[2])] = {}
					end
					table.insert(self.skillClass[class[1]][tostring(class[2])], self.jsonSkill[i].name)
				end
			end
		end
	end
	-- dodaj all do wszystkich klas
	for class, classSkills in pairs(self.skillClass) do
		-- self.skillClass["all"]
		if class ~= "all" then
			  -- przez caly all
				for level, skills in pairs(self.skillClass["all"]) do
						-- jesli level nie istnieje w klasy skillach
						if not utils:arrayKeyExists(level, classSkills) then
							-- utworz nowy level
							self.skillClass[class][level] = {}
						end
						-- dodaj do klasy levelu spelle z all
						self.skillClass[class][level] = utils:arrayMerge(self.skillClass[class][level], skills)
				end
		end
	end
	-- nie potrzebny juz all
	self.skillClass["all"]  = nil
end

function base:test()
	-- zrobic druida z php
	-- zrobic druida z php
	-- zrobic druida z php
	-- zrobic druida z php
	display(self.jsonSpell)


end

function base:spellSearch(spell)
  spell = string.lower(spell)
  local book = {}
  local teacher = {}
  local fclass = profile:get("fclass")
  local sclass = profile:get("sclass")
  local err = false
  if fclass == "" or sclass == "" then
    err = true
  end
  for i, v in pairs(self.jsonBook) do
    -- jesli klasa z profilu pasuje
    if v.class == self:getClass(fclass) or v.class == self:getClass(sclass) then
      for j, s in pairs(v.spells) do
        -- jesli spell znajduje sie w spellach
        if string.lower(s) == spell then
          local arr = {}
          local stars = ""
          local notes = ""
          if v.boss then
            stars = " ("..v.boss..")"
          end
          if v.notes then
            notes = "Notka: "..v.notes
          end
          table.insert(arr, {self:classToColor(v.class), self:rgetClass(v.class), ""})
      		table.insert(arr, {"tomato", v.mob..stars, ""})
          table.insert(arr, {"white", v.region, ""})
          table.insert(book, arr)
          arr = {}
          local temp = {"book", "Ksiega: "..utils:concat(self:fixBookSpells(v.spells), ", ")}
          if notes then
            table.insert(temp, notes)
          end
          table.insert(arr, temp)
          table.insert(book, arr)
        end
      end
    end
  end
  for i, v in pairs(self.jsonTeacher) do
      for j, s in pairs(v.skills) do
        if string.lower(s.name) == spell then
          local arr = {}
          if utils:inArray2(self:getClass(fclass), v.classes) or utils:inArray2(self:getClass(sclass), v.classes) then
            local arr = {}
						if not s.min or s.min < 0 then
							s.min = 0
						end
						if not s.max or s.max < 0 then
							s.max = 0
						end
						local minmax = ""
						if s.max == 0 then
							minmax = "Spell"
							minmaxColor = "steel_blue"
						else
							minmax = utils:doubleDigit(s.min).."-"..utils:doubleDigit(s.max)
							minmaxColor = "white"
						end
						table.insert(arr, {minmaxColor, minmax, ""})
        		table.insert(arr, {"green", v.mob, "gotoRoom('"..v.roomVnum.."')"})
            table.insert(arr, {"white", v.region, ""})
            table.insert(teacher, arr)
          end
        end
      end
  end
	-- sort teacher
	table.sort(teacher, function(a, b)
		local str2int = function(str)
			return tonumber(string.gsub(str, "-", ""), 10)
		end
		if a[1][2] == "Spell" then
			-- regionem sort
			return a[3][2] < b[3][2]
		else
			-- minmaxem sort
    	return str2int(a[1][2]) < str2int(b[1][2])
		end
	end)
  return {teacher, book}
end

function base:fixBookSpells(arr)
  local out = {}
  for i=1, #arr do
    out[i] = string.lower(arr[i])
  end
  return out
end

-- DODAC DROWIEGO CZARNOKSIEZNIKA Z NK I JEGO KSIAZKWE   ksiega magii drowow
-- QUAZ W BAZIE ID VNUM DO UZUPELNIENIA - umbrowe nowy boss
function base:bookClosest()
  local currentID = getPlayerRoom()
  for i, v in pairs(self.jsonBook) do
    if v.roomVnum then

      if getPath(currentID,v.roomVnum) then

        if #speedWalkPath < 50 then

          --utils:inArray

          echo(v.mob.."("..v.class..")")

          cechoLink("<white><<green>Rura<white>>", [[gotoRoom(]]..v.roomVnum..[[)]], "", true)
          echo("\n")
        end

      else
        --echo("sraka")
      end
    else
      echo(v.mob)
    end

  end

end

function base:teacherClosest()
  local currentID = getPlayerRoom()
  for i, v in pairs(self.jsonTeacher) do
    if v.roomVnum then

      if getPath(currentID,v.roomVnum) then

        if #speedWalkPath < 50 then

          --utils:inArray

          echo(v.mob)

          cechoLink("<white><<green>Rura<white>>", [[gotoRoom(]]..v.roomVnum..[[)]], "", true)
          echo("\n")
        end

      else
        --echo("sraka")
      end
    else
      echo(v.mob)
    end

  end
end


--[[



<<============= lista ksiag dla klasy: Czarodziej =============>>

Dodac:

Bodak Hale Forteca:
[25400] magiczna ksiega czarow: 'dimension door' 'locate object' 'eye of vision' 'hold monster' 'blink'

Lodowy Smok:
[51007] prastara lodowa ksiega: 'blizzard storm' 'power word kill' 'chain lightning' 'absolute magic protection'


ponury mag (+# Gory nad Jaskiniami Naugrimow):
[64939] szara ksiega: 'darkness' 'dismiss undead' 'summon flying creature' 'summon lesser meteor' 'mend golem'


NK:
-nekromanta Nagash     lokacja 55420
[55418] ksiega magii: 'fly' 'unholy fury' 'cone of cold' 'raise ghoul' 'orb of entropy'


Zamek Variotha:
nekromantka Kaylin Ygresse
[30123] notatnik Kaylin: 'ethereal armor' 'ethereal body' 'revive' 'vampiric aura' 'entrophy wave'


Podmrok:
-Czarnoksieznik Zeerith'din (Podmrok gobliny)
[16818] ksiega zaklec: 'force bolt' 'decay' 'vampiric touch' 'fly' 'resist elements'


prog:
-??
[40532] magiczna ksiega lowcy: 'psychic scream' 'summon'

-??
[17963] zakrwawiona, magiczna ksiega: 'giant strength' 'behemot toughness' 'deflect wounds' 'change weapon' 'summon ancient creature'

-??
[14074] ksiega czarow: 'dismiss insect' 'magic missile' 'mind fortess' 'piercing sight'

-??
[10957] ksiega mocy: 'mend' 'pass door' 'spirits armor' 'horrid wilting' 'vampiric touch'

gowno:
[26968] ksiega ochrony przed kwasem: 'endure acid'
[26984] Ksiega z magicznym zakleciem "Swiatlo": 'light'
[585] magiczna ksiega z czarem 'swiatlo': 'light'
[2016] ksiega ochrony przed ogniem: 'endure fire'
[2319] ksiega ochrony przed zimnem: 'endure cold'
[14069] magiczna ksiega z czarem 'uderzenie mocy': 'force bolt'
[14070] magiczna ksiega z czarem 'kwasowy podmuch': 'acid blast'
[3253] zielona ksiega: 'acid hands'
[9353] ksiega ochrony przed elektrycznoscia: 'endure lightning'

]]--
