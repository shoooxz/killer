-- BAZA JEST UPOSLEDZONA, NIE DZIALA NA DWA PROFILE, TRZEBA OTWIERAC I ZAMYKAC
-- uproszczona wersja db tylko na potrzeby skryptow, z fetchem tylko z eq
dbi = {}
dbi.__index = dbi

function dbi:new(name, schema)
    local obj = setmetatable({}, self)
    obj.name = name
    obj.schema = schema
    return obj
end

function dbi:open()
  self.db = db:create(self.name, self.schema)
end

function dbi:fetch(sheet, eq, sort)
  local t = {}
  local s = nil
  for key, value in pairs(eq) do
    table.insert(t, db:eq(self.db[sheet][key], value))
  end
  if sort then
    s = {}
    for i=1, #sort do
      table.insert(s, self.db[sheet][sort[i]])
    end
  end
  return db:fetch(self.db[sheet], t, s)
end

function dbi:add(sheet, t)
  return db:add(self.db[sheet], t)
end

function dbi:delete(sheet, id)
  db:delete(self.db[sheet], id)
end

function dbi:close()
  db:close(self.db)
end
