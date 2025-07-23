buff = buff or {}
buff.db = dbi:new("buff", {
    buff = {
        name = "",
        set1 = "",
        set2 = "",
        owner = "",
        _index = { "name" },
		    _violations = "IGNORE",
    }
})
buff.short = {
  "haste",
  "mantle",
  "stability",
  "mirror image",
  "free action",
  "fireshield",
  "res magi weapon",
  "reflect spell",
  "divine power",
  "wind shield",
}

function buff:show()
  local fclass = profile:get("fclass")
  local sclass = profile:get("sclass")
  local buffs = base:getSpells("defensive", fclass, sclass)
  local saved = profile:get("buffbasic")
  local saved2 = profile:get("buffbasic2")
  local print = {}
  local arr = {}
  for circle, spells in pairs(buffs) do
    local c = tonumber(circle)
    if not print[c] then print[c] = {} end
    for i=1, #spells do
      local ID = spells[i][3]
      table.insert(arr, {self:colorStringCheck(tostring(ID), saved2, "M"), "M", [[buff:basic2Set("]]..ID..[[", "M")]]})
      table.insert(arr, {self:colorStringCheck(tostring(ID), saved2, "S"), "S", [[buff:basic2Set("]]..ID..[[", "S")]]})
      table.insert(arr, {self:colorArrayCheck(ID, saved), utils:ellipsis(spells[i][1], 17), [[buff:basicSet(]]..ID..[[)]]})
      if utils:mod(i, 3) == 0 then
        table.insert(print[c], arr)
        arr = {}
      end
    end
    if next(arr) then
      -- uzupelnij brakujace miejsca w tabeli
      local addEmpty = 3-#arr/3 -- w tablicy jest 3*3 elementy max
      for i=1, addEmpty do
        table.insert(arr, {"empty", false})
        table.insert(arr, {"empty", false})
        table.insert(arr, {"empty", true})
      end
      table.insert(print[c], arr)
      arr = {}
    end
  end
  printer:buffShow(print)
end

function buff:listAdd(name)
  self.db:open()
  local ok, err = self.db:add("buff", {
    name = name,
    set1 = yajl.to_string(profile:get("buffbasic")),
    set2 = yajl.to_string(profile:get("buffbasic2")),
    owner = profile:getName()
  })
  if not ok then
    	printer:error("Buff", err)
    return
  end
  self:listRender()
end

function buff:setSerialized(res1, res2)
  profile:set("buffbasic", yajl.to_value(res1))
  profile:set("buffbasic2", yajl.to_value(res2))
  self:show()
end

function buff:deleteSet(id)
  self.db:open()
  self.db:delete("buff", id)
  self:listRender()
end

function buff:listRender()
  self.db:open()
	local res = self.db:fetch("buff", {["owner"] = profile:getName()}, {"name"})
	local out = {}
	for i=1, #res do
    local arr = {}
    table.insert(arr, {"red", "X", [[buff:deleteSet(]]..res[i]._row_id..[[)]]})
		table.insert(arr, {false, res[i].name, [[buff:setSerialized("]]..res[i].set1..[[", ']]..res[i].set2..[[')]]})
    table.insert(out, arr)
	end
	printer:simpleList(out, "Buff")
  self.db:close()
end

function buff:masterAllowed(target)
  if string.find(target, "M") then return true end
  return false
end

function buff:slaveAllowed(target)
  if string.find(target, "S") then return true end
  return false
end

function buff:cast(target)
  local fclass = profile:get("fclass")
  local sclass = profile:get("sclass")
  local buffs = base:getSpells("defensive", fclass, sclass)

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
  local spellToId = {}

  for circle, spells in pairs(buffs) do
    for i=1, #spells do
      local spell = spells[i][1]
      local id = spells[i][3]

      -- cast on me
      if utils:inArray2(id, ids) then
        -- short
        if utils:inArray2(spell, self.short) then
          table.insert(meShort, spell)
        else
          table.insert(me, spell)
        end
        -- master or slave
        if utils:arrayKeyExists(tostring(id), tar) then
          -- cast on master
          if self:masterAllowed(tar[tostring(id)]) and M then
            -- short
            if utils:inArray2(spell, self.short) then
              table.insert(masterShort, spell)
            else
              table.insert(master, spell)
            end
          end
          -- cast on slave
          if self:slaveAllowed(tar[tostring(id)]) and S then
              --short
              if utils:inArray2(spell, self.short) then
                table.insert(slaveShort, spell)
              else
                table.insert(slave, spell)
              end
          end
        end
      end

    end -- spells end
  end -- circles end

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

function buff:reset()
  profile:set("buffbasic", {})
  profile:set("buffbasic2", {})
  self:show()
end

function buff:basic2Set(id, str)
  local arr = profile:get("buffbasic2")
  if not utils:arrayKeyExists(id, arr) then
    arr[id] = ""
  end
  if string.find(arr[id], str) then
    -- jesli w stringu jest M albo S, usun to
    arr[id] = string.gsub(arr[id], str, "")
    -- jesli puste usun
    if arr[id] == "" then
      arr[id] = nil
    end
   else
    -- jesli nie ma, dodaj
    arr[id] = arr[id]..str
  end
  profile:set("buffbasic2", arr)
  self:show()
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
  self:show()
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
