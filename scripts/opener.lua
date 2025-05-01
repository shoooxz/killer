opener = opener or {}
-- BAZA JEST UPOSLEDZONA, NIE DZIALA NA DWA PROFILE, TRZEBA OTWIERAC I ZAMYKAC
function opener:open()
  return db:create("opener", {
      opener = {
          name = "",
          ass = "",
          def = "",
          owner = "",
          _index = { "name" },
  		    _violations = "IGNORE",
      }
  })
end

opener.db = opener:open()

function opener:close()
  db:close(self.db.opener)
end

function opener:listRender()
  self:open()
	local res = db:fetch(self.db.opener, db:eq(self.db.opener.owner, profile:getName()), {self.db.opener.name})
	local out = {}
	for i=1, #res do
    local arr = {}
    table.insert(arr, {"red", "X", [[opener:deleteSet(]]..res[i]._row_id..[[)]]})
		table.insert(arr, {"white", res[i].name, [[opener:setCurrent("]]..res[i].ass..[[", ']]..res[i].def..[[')]]})
    table.insert(out, arr)
	end
	printer:buff(out, "Opener")
  self:close()
end

function opener:setByName(name)
  self:open()
  local res = db:fetch(self.db.opener, {db:eq(self.db.opener.owner, profile:getName()), db:eq(self.db.opener.name, name)})
  self:setCurrent(res[1].ass, res[1].def)
  self:close()
end

function opener:deleteSet(id)
  self:open()
  db:delete(self.db.opener, id)
  self:listRender()
end

function opener:setCurrent(ass, def)
  profile:set("asopener", ass)
  profile:set("kiopener", def)
  printer:success("Opener", "Ustawiono nowy opener!")
end

function opener:listAdd(name, ass, def)
  self:open()
  local ok, err = db:add(self.db.opener, {name = name, ass = ass, def = def, owner = profile:getName()})
  if not ok then
    	printer:error("Opener", err)
    return
  end
  self:listRender()
  self:close()
end
