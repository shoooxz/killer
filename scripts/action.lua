action = action or {}

function action:skill(slot, type)
  local fclass = profile:get("fclass")
  local sclass = profile:get("sclass")
  local skills = self:cleanSkills(base:getSkills(fclass, sclass))
  self:print(false, skills, function(name, color) return function() footer:actionSet(slot, type, name, 0, color) end end, slot, type)
end

function action:spell(slot, type)
  local fclass = profile:get("fclass")
  local sclass = profile:get("sclass")
  local spells = base:getSpells("offensive", fclass, sclass)
  local school = nil
  if base:isSpecialist(fclass) and fclass ~= "ogol" then
    local s = base:identToSchool(fclass)
    school = {s, base:schoolToColor(s)}
  end
  self:print(school, spells, function(name, color) return function() footer:actionSet(slot, type, name, 1, color) end end, slot, type)
end

function action:shortName(name)
  return utils:abbr(name)
end

function action:print(school, t, func, slot, typee)
  local print = {}
  local arr = {}
  for circle, spells in pairs(t) do
    local c = circle
    if type(c) == "string" then
      c = tonumber(circle)
    end
    if not print[c] then print[c] = {} end
    for i=1, #spells do
      local name = spells[i]
      local color = "sienna"
      --- spells maja budowe tabelowa
      if type(spells[i]) == "table" then
        name = spells[i][1]
        color = base:schoolToColor(spells[i][2][1])
      end
      table.insert(arr, {color, utils:ellipsis(name, 24), func(name, color)})
      if utils:mod(i, 3) == 0 then
        table.insert(print[c], arr)
        arr = {}
      end
    end
    if next(arr) then
      -- uzupelnij brakujace miejsca w tabeli
      local addEmpty = 3-#arr -- w tablicy jest 3 elementy max
      for i=1, addEmpty do
        table.insert(arr, {"empty", false})
      end
      table.insert(print[c], arr)
      arr = {}
    end
  end
  printer:actionShow(school, utils:fillGaps(print, false), slot, typee)
end

function action:cleanSkills(arr)
  local skip = {
    "flail", "mace", "sword", "whip", "pick lock", "peek", "steal", "short-sword", "detect traps", "traps disarm",
    "medium armor", "dagger", "riding", "bandage", "herbs knowledge", "trapper", "trade", "light armor", "spear",
    "desert bond", "first aid", "envenom", "target", "meditation", "dualwield style", "mining", "sharpen", "recuperate",
    "hustle", "backstab", "axe", "polearm", "staff", "rescue", "twohanded weapon", "heavy armor", "lay", "holy prayer",
    "twohanded weapon style", "turn undead", "track", "shield block", "undead resemblance", "lore item",
    "control undead", "control of magic", "loth prayer", "unity with familiar", "healing touch", "claw-weapons", "ambush",
  }
  for circle, skills in pairs(arr) do
    for i = #skills, 1, -1 do
        local skill = skills[i]
        if skill == "holy prayer" or skill == "loth prayer" then
          table.insert(arr[circle], "pray")
        end
        if string.find(skill, "mastery") or utils:inArray2(skill, skip) then
          table.remove(arr[circle], i)
        end
    end
  end
  return self:sort(arr)
end

function action:sort(arr)
  local out = {}
  for circle, skills in pairs(arr) do
    if #skills > 0 then
      table.insert(out, tonumber(circle), skills)
    end
  end
  return out
end
