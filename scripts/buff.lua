buff = buff or {}
-- basic
buff.basic = {
  ["shield"] = 1,
  ["blur"] = 2,
  ["armor"] = 3,
  ["luck"] = 4,
  ["bless"] = 5,
  ["aura of protection"] = 6,
  ["mirror image"] = 7,
  ["bull strength"] = 8,
  ["cat grace"] = 9,
  ["fox cunning"] = 10,
  ["bear endurance"] = 11,
  ["aid"] = 12,
  ["divine favor"] = 13,
  ["aura of battle lust"] = 14,
  ["aura of endurance"] = 15,
  ["fortitude"] = 16,
  ["haste"] = 17,
  ["free action"] = 18,
  ["fireshield"] = 19,
  ["iceshield"] = 20,
  ["minor globe of in"] = 21,
  ["champion strength"] = 22,
  ["stability"] = 23,
  ["brave cloak"] = 24,
  ["mental barrier"] = 25,
  ["stone skin"] = 26,
  ["reflect spell"] = 27,
  ["ethereal armor"] = 28,
  ["energy shield"] = 29,
  ["reflect spell II"] = 30,
  ["globe of in"] = 31,
  ["summon distortion"] = 32,
  ["lightingshield"] = 33,
  ["mantle"] = 34,
  ["reflect spell III"] = 35,
  ["absolute magic p"] = 36,
  ["deflect wounds"] = 37,
}

function buff:basic2Set(id, str)
  local arr = profile:get("buffbasic2")
  if not utils:arrayKeyExists(id, arr) then
    arr[id] = ""
  end
  if string.find(arr[id], str) then
    -- jesli w stringu jest M albo S, usun to
    arr[id] = string.gsub(arr[id], str, "")
  else
    -- jesli nie ma, dodaj
    arr[id] = arr[id]..str
  end
  profile:set("buffbasic2", arr)
  self:basicShow()
end

function buff:basicSet(id)
  -- jak jest w profilu to usunac, a jak nie ma dodac
  local arr = profile:get("buffbasic")
  if utils:inArray(id, arr) then
    utils:arrayRemoveByValue(id, arr)
  else
    table.insert(arr, id)
  end
  profile:set("buffbasic", arr)
  self:basicShow()
end

function buff:colorArrayCheck(id, arr)
  if utils:inArray(id, arr) then
    return 'green'
  else
    return 'grey'
  end
end

function buff:colorStringCheck(id, arr, str)
  if arr[id] then
    if string.find(arr[id], str) then
      return 'green'
    else
      return 'grey'
    end
  else
    return 'grey'
  end
end

function buff:basicShow()
  local i =1
  local print = {}
  local arr = {}
  local saved = profile:get("buffbasic")
  local saved2 = profile:get("buffbasic2")
  for spell, id in pairs(self.basic) do
    table.insert(arr, {self:colorStringCheck(id, saved2, "M"), "M", [[buff:basic2Set(]]..id..[[, "M")]]})
    table.insert(arr, {self:colorStringCheck(id, saved2, "S"), "S", [[buff:basic2Set(]]..id..[[, "S")]]})
    table.insert(arr, {self:colorArrayCheck(id, saved), spell, [[buff:basicSet(]]..id..[[)]]})
    if utils:mod(i, 3) == 0 then
      table.insert(print, arr)
      arr = {}
    end
    i = i+1
  end
  printer:buffBasic(print)
end
