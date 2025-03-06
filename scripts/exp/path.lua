path = path or {}
path.conf = {}

function path:start(what)
  if what == "fort" then
    self:fortStart()
  end
  if what == "ketony" then
    self:ketonyStart()
  end
end

function path:fortStart()
  self.conf = {
    ["path"] = {"e", "n", "s", "s", "n", "e", "n", "s", "s"},
    ["enemy"] = {},
  }
  exp:start(self.conf)
end

function path:ketonyStart()
  self.conf = {
    ["path"] = {"e", "e", "e", "n", "w", "w", "w", "w", "w"},
    ["enemy"] = {"Korowy keton", "Drzewiec", "Mlody keton"},
  }
  exp:start(self.conf)
end
