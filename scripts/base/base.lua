base = base or {}
base.jsonTeacher = {}
base.jsonBook = {}
base.jsonSpell = {}
base.jsonSkill = {}
base.spellDictionary = {}
base.spellSchool = {}
base.spellDictionaryFull = {}
base.skillDictionaryFull = {}
base.spellClass = {}
--[[

3. Wprowadzono nowe umiejętności ( skile dostępne tylko dla magów na 31 levelu ) (nauczyć się można wcześniej ale używać dopiero na 31) - dostępne tylko z ksiąg ze skilami.
- fire mastery
- cold mastery
- acid mastery
- lighting mastery

Dana masterka szkoli się podczas używania speli ofensywnych z danego żywiołu.
Jak masterka się odpali nakłada na przeciwnika czasowy affekt.
- zmiejsza odporność przeciwnika na dany żywioł (wartość zależna od poziomu masterki)
- co runde mob otrzymuje dodatkowe obrażenia od danego affektu.
- rzucając czar z tego samego żywiołu co mob otrzymal affect mamy szansę ( zależy od masterki) na wzrost obrażeń danego spella + bonus zależnie od zywiołu
(ogien - mocniejsze obrazenia, zimno - szansa na zamrozenie, pioruny - szansa na porażenie i wywrotkę, kwas - mocniejsze obrazenia ).

Można posiadać wiele masterek i rzucając czary różnych żywiołów można na przeciwnika nałożyć affecty ze wszystkich masterek.


]]--

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
  self:buildSpellDictionary()
  self:buildSpellDictionaryFull()
	self:buildSkillDictionaryFull()
	self:buildSchool()
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
    local name = self.jsonSkill[i][1]
    local first = string.sub(name, 1, 1)
    if not self.skillDictionaryFull[first] then
      self.skillDictionaryFull[first] = {}
    end
    --table.insert(, name)
    self.skillDictionaryFull[first][name] = {}
    self.skillDictionaryFull[first][name].name =  self.jsonSkill[i][1]
    self.skillDictionaryFull[first][name].description =  self.jsonSkill[i][2]
    self.skillDictionaryFull[first][name].comment =  self.jsonSkill[i][3]
    -- tutaj dodawac kolejne
  end
end

function base:help(name)
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
		out.meta.len = string.len(out.meta.school[1])+1
		table.insert(arr, {self:schoolToColor(out.meta.school[1]), out.meta.school[1], ""})
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

function base:buildSchool()
	self:declareSchool("inwo")
	self:declareSchool("iluz")
	self:declareSchool("nekr")
	self:declareSchool("odrz")
	self:declareSchool("prze")
	self:declareSchool("przy")
	self:declareSchool("zaur")
	self:declareSchool("ogol")
	for i=1, #self.jsonSpell do
			if type(self.jsonSpell[i].class) == "table" and next(self.jsonSpell[i].class) then
				for j=1, #self.jsonSpell[i].class do
					local class = self.jsonSpell[i].class[j]
					if class[1] == "mag" then
						if self:schoolSuccess(self.jsonSpell[i].school, "Inwokacje", "Zauroczenie", "Przywolanie") then
							table.insert(self.spellClass["inwo"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Iluzje", "Inwokacje", "Nekromancja", "Odrzucanie") then
							table.insert(self.spellClass["iluz"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Nekromancja", "Iluzje", "Zauroczenie") then
							table.insert(self.spellClass["nekr"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Odrzucanie", "Przemiany", "Iluzje") then
							table.insert(self.spellClass["odrz"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Przemiany", "Odrzucanie", "Nekromancja") then
							table.insert(self.spellClass["prze"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Przywolanie", "Poznanie", "Inwokacje") then
							table.insert(self.spellClass["przy"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:schoolSuccess(self.jsonSpell[i].school, "Zauroczenie", "Inwokacje", "Nekromancja") then
							table.insert(self.spellClass["zaur"][tostring(class[2])], self.jsonSpell[i].name)
						end
						if self:generalCheck(class[2], self.jsonSpell[i].name, self.jsonSpell[i].school) then
							table.insert(self.spellClass["ogol"][tostring(class[2])], self.jsonSpell[i].name)
						end
					else
						if not self.spellClass[class[1]] then
								self.spellClass[class[1]] = {}
						end
						if not self.spellClass[class[1]][tostring(class[2])] then
								self.spellClass[class[1]][tostring(class[2])] = {}
						end
						table.insert(self.spellClass[class[1]][tostring(class[2])], self.jsonSpell[i].name)
					end
				end
			end

		if type(self.jsonSpell[i].school) == "table" and next(self.jsonSpell[i].school) and self.jsonSpell[i].school[1]  then
			local short = self:schoolToShort(self.jsonSpell[i].school[1])
			if not self.spellSchool[short] then
				self.spellSchool[short] = {}
			end
			table.insert(self.spellSchool[short], self.jsonSpell[i]["name"])
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
          local temp = {false, "Ksiega: "..utils:concat(self:fixBookSpells(v.spells), ", ")}
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
        		table.insert(arr, {"green", v.mob, ""})
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
