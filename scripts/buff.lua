buff = buff or {}
-- zjawa w domku ressist frost
-- basic
buff.basic = {
  ["shield"] = 1,
  ["blur"] = 2,
  ["armor"] = 3,
  ["luck"] = 4,
  ["bless"] = 5,
  ["aura of prot"] = 6,
  ["mirror image"] = 7,
  ["bull strength"] = 8,
  ["cat grace"] = 9,
  ["fox cunning"] = 10,
  ["bear enduran"] = 11,
  ["aid"] = 12,
  ["divine favor"] = 13,
  ["aura of battle lu"] = 14,
  ["aura of endu"] = 15,
  ["fortitude"] = 16,
  ["haste"] = 17,
  ["free action"] = 18,
  ["fireshield"] = 19,
  ["iceshield"] = 20,
  ["minor glob of in"] = 21,
  ["champion str"] = 22,
  ["stability"] = 23,
  ["brave cloak"] = 24,
  ["mental barrier"] = 25,
  ["stone skin"] = 26,
  ["reflect spell"] = 27,
  ["ethereal armor"] = 28,
  ["energy shield"] = 29,
  ["ref spell II"] = 30,
  ["globe of in"] = 31,
  ["summon distort"] = 32,
  ["lightingshield"] = 33,
  ["mantle"] = 34,
  ["ref spell III"] = 35,
  ["absolute magic p"] = 36,
  ["deflect wounds"] = 37,
  ["defense curl"] = 38,
  ["holy weapon"] = 39,
  ["res magi weapon"] = 40,
  ["pustak"] = 41,
  ["pustak"] = 42,
--  ["pustak"] = 43,
}

buff.short = {
  "haste",
  "mantle",
  "stability",
  "mirror image",
  "free action",
  "fireshield",
  "res magi weapon",
}

function buff:masterAllowed(target)
  if string.find(target, "M") then return true end
  return false
end

function buff:slaveAllowed(target)
  if string.find(target, "S") then return true end
  return false
end

function buff:basicCast(target)

  send("order "..profile:get("sub").." buff "..target)

  target = string.upper(target)
  local M = self:masterAllowed(target)
  local S = self:slaveAllowed(target)
  local ids = profile:get("buffbasic")
  local tar = profile:get("buffbasic2")

  local me = {}
  local slave = {}
  local master = {}
  local meShort = {}
  local slaveShort = {}
  local masterShort = {}

  for spell, id in pairs(self.basic) do
    -- cast on me
    if utils:inArray2(id, ids) then
      -- short
      if utils:inArray2(spell, self.short) then
        table.insert(meShort, spell)
      else
        table.insert(me, spell)
      end
      -- master or slave
      if utils:arrayKeyExists(id, tar) then
        -- cast on master
        if self:masterAllowed(tar[id]) and M then
          -- short
          if utils:inArray2(spell, self.short) then
            table.insert(masterShort, spell)
          else
            table.insert(master, spell)
          end
        end
        -- cast on slave
        if self:slaveAllowed(tar[id]) and S then
            --short
            if utils:inArray2(spell, self.short) then
              table.insert(slaveShort, spell)
            else
              table.insert(slave, spell)
            end
        end
      end
    end
  end

  -- long
  if next(me) then
    buff:buffSend(me, "")
  end
  if next(master) then
    buff:buffSend(master, profile:get("master"))
  end
  if next(slave) then
    buff:buffSend(slave, profile:get("sub"))
  end

  -- short
  if next(meShort) then
    buff:buffSend(meShort, "")
  end
  if next(masterShort) then
    buff:buffSend(masterShort, profile:get("master"))
  end
  if next(slaveShort) then
    buff:buffSend(slaveShort, profile:get("sub"))
  end

end

function buff:buffSend(arr, who)
  for i=1, #arr do
    send("cast '"..arr[i].."' "..who)
  end
end


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
