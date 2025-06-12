envenomer = envenomer or {}
envenomer.list = {}
envenomer.type = {
  ["0"] = {
    ["name"] = "spowolniona",
    ["saved"] = "0",
    ["full"] = "0",
    ["duration"] = "2d4",
    ["note"] = "",
  },
  ["1"] = {
    ["name"] = "slaba",
    ["saved"] = "1d5",
    ["full"] = "2d10",
    ["duration"] = "2d6",
    ["note"] = "",
  },
  ["2"] = {
    ["name"] = "srednia",
    ["saved"] = "2d15",
    ["full"] = "4d35",
    ["duration"] = "2d7",
    ["note"] = "",
  },
  ["3"] = {
    ["name"] = "silna",
    ["saved"] = "4d20",
    ["full"] = "5d45",
    ["duration"] = "3d7",
    ["note"] = "",
  },
  ["4"] = {
    ["name"] = "bardzo silna",
    ["saved"] = "4d40",
    ["full"] = "5d65",
    ["duration"] = "3d8",
    ["note"] = "",
  },
  ["5"] = {
    ["name"] = "usypiajaca",
    ["saved"] = "0",
    ["full"] = "0",
    ["duration"] = "2d4",
    ["note"] = "Zmiana pozycji na spiaca.",
  },
  ["6"] = {
    ["name"] = "oslepiajaca",
    ["saved"] = "1d5",
    ["full"] = "2d15",
    ["duration"] = "2d5",
    ["note"] = "",
  },
  ["7"] = {
    ["name"] = "paralizujaca",
    ["saved"] = "3d5",
    ["full"] = "3d25",
    ["duration"] = "2d3",
    ["note"] = "",
  },
  ["8"] = {
    ["name"] = "zabijajaca",
    ["saved"] = "4d35",
    ["full"] = "0",
    ["duration"] = "2d3",
    ["note"] = "W przypadku braku mastery envenom zabija uzywajacego.",
  },
  ["9"] = {
    ["name"] = "oslabiajaca sile",
    ["saved"] = "1d5",
    ["full"] = "2d5",
    ["duration"] = "2d4",
    ["note"] = "-str",
  },
  ["10"] = {
    ["name"] = "oslabiajaca obrazenia",
    ["saved"] = "1d5",
    ["full"] = "2d4",
    ["duration"] = "2d4",
    ["note"] = "-dam",
  },
  ["11"] = {
    ["name"] = "oslabiajaca celnosc",
    ["saved"] = "1d5",
    ["full"] = "2d5",
    ["duration"] = "2d4",
    ["note"] = "-hit",
  },
}

function envenomer:init()
  self.list = utils:readJson("scripts/base/envenomer.json")
  self:countDamageDuration()
end

function envenomer:countDamageDuration()
  for i, p in pairs(self.type) do
    if self.type[i].saved ~= "0" then
      self.type[i].saved = utils:diceToAverage(self.type[i].saved)
    end
    if self.type[i].full ~= "0" then
      self.type[i].full = utils:diceToAverage(self.type[i].full)
    end
    self.type[i].duration = utils:diceToAverage(self.type[i].duration)
  end
end

function envenomer:getListById(id)
  local out = {}
  for i=1, #self.list do
    if self.list[i].power == tonumber(id) then
      table.insert(out, self.list[i])
    end
  end
  return out
end

function envenomer:printList(id)
  local out = {}
  local list = self:getListById(id)
  out.meta = self.type[id]
  out.list = {}
  for i=1, #list do
    local temp = {}
    table.insert(out.list, {{"text", "orange", utils:ucfirst(list[i].name)}})
    table.insert(temp, list[i].mob)
    table.insert(temp, list[i].use)
    table.insert(temp, list[i].region)
    table.insert(temp, {false, "Wyznacz droge", "display("..(list[i].room)..")"})
    table.insert(out.list, temp)
    table.insert(out.list, {{"text", "dim_grey", list[i].note, true}})
  end
  printer:helpEnvenomersList(out)
end


function envenomer:getTypes()
  local sorted = self:sortTypes(self.type)
  local out = {}
  for i=1, #sorted do
    local temp = {}
    table.insert(temp, sorted[i].full)
    table.insert(temp, sorted[i].duration)
    table.insert(temp, {false, utils:ucfirst(sorted[i].name), "envenomer:printList('"..(i-1).."')"})
    table.insert(out, temp)
  end
  return out
end

function envenomer:sortTypes(tbl)
    local keys = {}
    -- Zbierz wszystkie klucze
    for k in pairs(tbl) do
        table.insert(keys, k)
    end
    -- Posortuj klucze traktując je jako liczby
    table.sort(keys, function(a, b)
        return tonumber(a) < tonumber(b)
    end)
    -- Zbuduj nową posortowaną tabelę
    local sorted = {}
    for _, k in ipairs(keys) do
        sorted[tonumber(k)+1] = tbl[k]
    end
    return sorted, keys -- zwraca też listę posortowanych kluczy, jeśli chcesz zachować kolejność
end
