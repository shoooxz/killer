opener = opener or {}
opener.db = dbi:new("opener", {
    opener = {
        name = "",
        ass = "",
        def = "",
        owner = "",
        _index = { "name" },
        _violations = "IGNORE",
    }
})

function opener:listRender()
  self.db:open()
  local res = self.db:fetch("opener", {["owner"] = profile:getName()}, {"name"})
	local out = {}
	for i=1, #res do
    local arr = {}
    table.insert(arr, {"red", "X", [[opener:deleteSet(]]..res[i]._row_id..[[)]]})
		table.insert(arr, {false, res[i].name, [[opener:setCurrent("]]..res[i].ass..[[", ']]..res[i].def..[[')]]})
    table.insert(out, arr)
	end
	printer:simpleList(out, "Opener")
  self.db:close()
end

function opener:setByName(name)
  self.db:open()
  local res = self.db:fetch("opener", {
      ["owner"] = profile:getName(),
      ["name"] = name
  })
  self:setCurrent(res[1].ass, res[1].def)
  self.db:close()
end

function opener:deleteSet(id)
  self.db:open()
  self.db:delete("opener", id)
  self:listRender()
end

function opener:setCurrent(ass, def)
  profile:set("asopener", ass)
  profile:set("kiopener", def)
  printer:success("Opener", "Ustawiono nowy opener!")
end

function opener:listAdd(name, ass, def)
  self.db:open()
  local ok, err = self.db:add("opener", {name = name, ass = ass, def = def, owner = profile:getName()})
  if not ok then
    	printer:error("Opener", err)
    return
  end
  self:listRender()
end
