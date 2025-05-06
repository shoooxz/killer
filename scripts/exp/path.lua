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
  if what == "szoriny" then
    self:szorinyStart()
  end
  if what == "trzewia" then
    self:trzewiaStart()
  end
  if what == "ezuri" then
    self:ezuriStart()
  end
  if what == "zboje" then
    self:zbojeStart()
  end
  if what == "szkarlatny" then
    self:szkarlatnyStart()
  end
  if what == "czarny" then
    self:czarnyStart()
  end
end

function path:fortStart()
  self.conf = {
    ["path"] = {"e", "n", "s", "s", "n", "e", "n", "s", "s"},
    ["enemy"] = {"Żolnierz", "Oficer", "Straznik"},
    ["buff"] = "exp",
    ["ident"] = "fort",
    ["loot"] = "cialo",
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
    ["loot"] = "kupa",
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
    ["loot"] = "drzewo",
  }
  exp:start(self.conf)
end

function path:szorinyStart()
  self.conf = {
    ["path"] = {"w", "n", "w", "e", "e", "e", "e", "s", "n", "e", "e", "e", "s", "e", "n", "e", "e", "n", "w", "w", "w", "n",
                "e", "w", "w", "s", "w", "w", "w", "w", "w", "w", "w", "n", "e", "e", "e", "u", "d", "e", "e", "u", "d",
                "e", "n", "w", "e", "n", "w", "u", "d", "w", "w", "u", "d", "s", "w", "n", "w", "s", "n", "e", "n",
                "e", "e", "e", "e", "e", "s", "s", "e", "n", "n", "e", "e", "e", "s", "n", "n", "e", "n", "w", "w", "s",
                "w", "w", "w", "w", "w", "w", "w", "e", "e", "n", "e", "n", "s", "e"},
    ["enemy"] = {"Wielki szorin", "Samica szorinow", "Maly szorin", "Jasnobrazowa szorin", "Samiec szorinow", "Szorin straznik legowiska", "Ogromny szorin", "Jednorozec"},
    ["buff"] = "exp",
    ["ident"] = "szoriny",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end

function path:trzewiaStart()
  self.conf = {
    ["path"] = {"e", "n", "e", "e", "n", "n", "w", "e", "n", "n", "w", "w", "n", "w", "w", "s", "n", "w", "w", "w", "s", "n", "w", "w",
                "s", "s", "s", "w", "w", "s", "w", "e", "s", "e", "e", "n", "n", "e", "e", "n", "e", "e", "e", "e", "e",
                "s", "s", "s", "s", "w"},
    ["enemy"] = {"Szkielet poszukiwacza skarbow"},
    ["buff"] = "exp",
    ["ident"] = "trzewia",
    ["loot"] = "kupa",
  }
  exp:start(self.conf)
end

function path:ezuriStart()
  self.conf = {
    ["path"] = {"e", "n", "u", "w", "u", "e", "n", "e", "u", "w", "s", "w", "u", "u", "n", "u", "e", "e", "s", "u", "u", "w", "n", "u"},
    ["enemy"] = {"Pomniejsza cienista istota"},
    ["buff"] = "exp",
    ["ident"] = "ezuri",
    ["loot"] = "gleba",
  }
  exp:start(self.conf)
end

function path:zbojeStart()
  self.conf = {
    ["path"] = {"s", "s", "s", "s", "s", "w", "s", "n", "e", "s", "e", "e", "e", "w", "w", "s", "s", "e", "n", "s", "w", "n", "n", "w", "n",
                "e", "n", "s", "e", "d"},
    ["enemy"] = {"Stary zboj", "Mlody zboj", "Zboj straznik obozu", "Herszt zbojecki"},
    ["buff"] = "exp",
    ["ident"] = "zboje",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end

function path:szkarlatnyStart()
  self.conf = {
    ["path"] = {"brama", "s", "w", "e", "s", "e", "w", "s", "tawerna", "e", "s", "w", "n", "wyjście", "s", "s", "s", "s",
                "u", "d", "n", "e", "więzienie", "d", "d", "e", "w", "u", "u", "wyjście", "w",
                "n", "n", "n", "n", "n", "e", "e", "u", "kwatery", "e", "komnata"},
    ["enemy"] = {"Żoldak", "Szkarlatny rycerz", "Gwardzista", "Wartownik", "Straznik magazynu"},
    ["buff"] = "exp",
    ["ident"] = "szkarlatny",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end

function path:czarnyStart()
  self.conf = {
    ["path"] = {"s", "s", "e", "e", "n", "s", "s", "s", "s", "s", "e", "s", "w", "n", "w", "w", "w", "w", "w", "n", "n", "w", "e", "n", "n", "n", "u"},
    ["enemy"] = {"Elitarny gwardzista", "Gwardzista", "Kat"},
    ["buff"] = "exp",
    ["ident"] = "czarny",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end
