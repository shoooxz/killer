boss = boss or {}
boss.list = {}
boss.waiting = ""

function boss:init()
  self.list = utils:readJson("scripts/boss/boss.json")
end

function boss:enemyExists()
  local loc = utils:getRoomPeople()
  if utils:inArray2(self.waiting, loc) then
    return true
  end
  return false
end

function boss:timerStart(name)
  printer:success("Boss", "Czekam na "..name.."!")
  self.waiting = name
  enableTimer("boss")
end

function boss:timerTick()
  if self:enemyExists() then
    scripts:beep()
  end
end

function boss:timerStop()
  if self.waiting ~= "" then
    printer:error("Boss", "Czekanie anulowane!")
    disableTimer("boss")
    self.waiting = ""
  end
end

function boss:search(what)
  -- bossy z podzialem na gwiazdki
  if what == "0" or what == "1" or what == "2" or what == "3" then

  else
    -- boss po name
    local boss = self:getByName(what)
    if boss then
      display(boss)
      local arr = {}
      boss.basic = {}
      boss.name2 = boss.name.." "..string.rep("*", boss.star)
      boss.note = boss.note.."."
      table.insert(arr, { self:agroToColor(boss.agro), "(Agresywny)", ""})
      table.insert(arr, {"white", table.concat(boss.damage, ", "), ""})
      table.insert(arr, {"white", boss.region, ""})
      table.insert(boss.basic, arr)
      boss.actions = {}
      table.insert(boss.actions, { "cyan", "Wyznacz droge", ""})
      table.insert(boss.actions, { "cyan", "Czekaj na bossa", 'boss:timerStart("'..boss.name..'")'})
      -- TODO SPELLS
      boss.arte = {}
      printer:boss(boss)
    end
  end
end

function boss:agroToColor(agro)
  if agro == 1 then
    return "red"
  end
  return "dim_grey"
end

function boss:getByName(name)
  local out = {}
  for i=1, #self.list do
    if self.list[i].name == name then
      return utils:shallowCopy(self.list[i])
    end
  end
  return false
end
