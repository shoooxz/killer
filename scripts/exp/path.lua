path = path or {}
path.conf = {}

function path:start(what)
  if what == "fort" then
    self:fortStart()
  end
  if what == "ketony" then
    self:ketonyStart()
  end
  if what == "wlosci" then
    self:wlosciStart()
  end
end

function path:fortStart()
  self.conf = {
    ["path"] = {"e", "n", "s", "s", "n", "e", "n", "s", "s"},
    ["enemy"] = {"Żolnierz", "Oficer", "Straznik"},
    ["buff"] = "exp",
    ["ident"] = "fort",
  }
  exp:start(self.conf)
end

function path:wlosciStart()
  self.conf = {
    ["path"] = {"u", "w", "s", "w", "w", "n", "n", "n", "n", "s", "s", "s", "s", "e", "e", "e", "e", "n", "n", "n", "n", "n", "e", "n", "n",
                "s", "s", "w", "s", "s", "s", "s", "s", "w", "w", "n", "e", "d",
                "n", "w", "w", "n", "e", "e", "n", "w", "w", "e", "n", "n", "w", "n", "e", "e", "n", "n", "n", "n",
                "w", "w", "n", "e", "e", "s", "s", "s", "s", "w", "w", "n", "u", "n",
                "w", "n", "n", "n", "e", "e", "e", "e", "s", "s", "s", "w", "w", "w"},
    ["enemy"] = {"Szkielet lucznika", "Szkielet wojownika"},
    ["buff"] = "exp",
    ["ident"] = "wlosci",
  }
  exp:start(self.conf)
end

function path:ketonyStart()
  self.conf = {
    ["path"] =  {"e", "e", "e", "n", "w", "w", "w", "w", "w", "n", "e", "e", "e", "e", "w", "n", "w", "w", "w", "w", "w", "e", "s", "s", "s", "s", "w", "n", "n", "n",
                "w", "n", "s", "s", "w", "s", "s", "e", "n", "s", "s",
                "s", "w", "s", "e", "s", "e", "e", "w", "n", "e", "n", "w", "e", "e", "e", "w", "s", "s", "n", "e", "s", "e", "e", "w", "n", "n", "e", "s", "n", "n",
                "e", "e", "s", "s", "n", "w", "s", "s", "e",
                "s", "w", "w", "w", "s", "e", "e", "e", "s", "w", "w", "w", "w", "w", "w", "w", "w", "n", "w", "e", "n", "e", "s", "n", "e", "e", "e", "s", "w", "w",
                "s", "s", "w", "w", "e", "e", "e", "e", "e", "e", "e", "e", "s", "s", "w", "n", "w", "w", "w", "w", "w", "w", "w", "e",
                "s", "w", "e", "e", "e", "e", "s", "w", "w", "w", "w", "s", "s", "s", "w", "e", "s", "e", "e", "e", "w", "n", "w", "n", "e", "e", "w", "n", "w", "e",
                "e", "e", "e", "n", "n", "e", "s", "e", "e", "e", "e", "s", "w", "w", "w", "w", "s", "w", "w", "s", "w", "e", "e", "s", "w", "e", "e", "n", "s",
                "e", "e", "e", "n", "n", "e"},
    ["enemy"] = {"Korowy keton", "Drzewiec", "Mlody keton"},
    ["buff"] = "exp",
    ["ident"] = "ketony",
  }
  exp:start(self.conf)
end
