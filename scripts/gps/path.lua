path = path or {}
path.conf = {}
path.db = dbi:new("gps", {
  gps = {
      name = "",
      id = "",
      region = "",
      enemy = "",
      loot = "",
      _index = { "name" },
      _violations = "IGNORE",
  }
})

function path:reverseDirection(path)
  for i=1, #path do
    path[i] = mapper.shortMirror[path[i]]
  end
  return path
end

function path:start(what, reverse)
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
    self:ezuriStart(reverse)
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
  if what == "yugo" then
    self:yugoStart(reverse)
  end
  if what == "barby" then
    self:barbyStart()
  end
  if what == "centaury" then
    self:centauryStart(reverse)
  end
  if what == "statek" then
    self:statekStart(reverse)
  end
  if what == "lodowiec" then
    self:lodowiecStart(reverse)
  end
  if what == "barbynk" then
    self:barbynkStart()
  end
  if what == "podmrokw2" then
    self:podmrokw2Start(reverse)
  end
  if what == "podmrokn1" then
    self:podmrokn1Start(reverse)
  end
  if what == "podmroke1" then
    self:podmroke1Start(reverse)
  end
  if what == "podmroks1" then
    self:podmroks1Start(reverse)
  end
  if what == "podmrokw1" then
    self:podmrokw1Start(reverse)
  end
  if what == "pajaki" then
    self:pajakiStart()
  end

end

function path:fortStart()
  self.conf = {
    ["path"] = {"e", "n", "s", "s", "n", "e", "n", "s", "s"},
    ["enemy"] = {"Żolnierz", "Oficer", "Straznik"},
    ["buff"] = "exp",
    ["ident"] = "fort",
    ["loot"] = "cialo",
    ["onStart"] = function()
      state:orderSub("wield 0")
      inventory:weaponRemove()
    end,
    ["onEnd"] = function()
      state:orderSub("wield 1")
      inventory:weaponWield()
    end,
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
    ["onStart"] = function()
      send("get kosc")
    end,
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

function path:ezuriStart(reverse)
  self.conf = {
    ["path"] = {"e", "n", "u", "w", "u", "e", "n", "e", "u", "w", "s", "w", "u", "u", "n", "u", "e", "e", "s", "u", "u", "w", "n", "u"},
    ["enemy"] = {"Pomniejsza cienista istota"},
    ["buff"] = "exp",
    ["ident"] = "ezuri",
    ["loot"] = "gleba",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
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

function path:yugoStart(reverse)
  self.conf = {
    ["path"] = {"n", "n", "n", "d", "d", "s", "s", "e", "e", "n", "n", "w", "s"},
    ["enemy"] = {"Yugoloth", "Ogromny yugoloth"},
    ["buff"] = "exp",
    ["ident"] = "yugo",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:barbyStart(reverse)
  self.conf = {
    ["path"] = {"n", "n", "szałas", "wyjście", "n", "szałas", "wyjście", "n", "e", "szałas", "wyjście", "n", "szałas", "wyjście", "n",
                "n", "s", "w", "szałas", "wyjście", "w", "szałas", "wyjście", "w", "szałas", "wyjście", "n", "e", "n", "e", "szałas", "wyjście", "e", "szałas", "wyjście",
                "w", "w", "n", "w", "w", "w", "s", "szałas", "wyjście", "s", "szałas", "wyjście", "s", "szałas", "wyjście", "e", "s", "s", "szałas", "wyjście",
                "e", "s", "szałas", "wyjście", "e", "szałas", "wyjście", "e"},
    ["enemy"] = {"Barbarzynska kobieta", "Barbarzynski chlopczyk", "Dziewczynka", "Stary barbarzynca", "Barczysty barbarzynca", "Chlopiec", "Mlody barbarzynca"},
    ["buff"] = "exp",
    ["ident"] = "barby",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end


function path:centauryStart(reverse)
  self.conf = {
    ["path"] = {"w", "n", "n", "w", "w", "n", "e", "e", "n", "w", "w", "n", "e", "e", "n", "w", "e", "n", "n", "e", "n", "e", "s", "s", "w", "s",
                "s", "s", "s", "s", "s", "e", "n", "n", "n", "n", "n", "e", "e", "n", "n", "n", "n", "w", "s", "s", "s", "s",
                "s", "s", "s", "s", "e", "s", "n", "n", "n", "n", "n", "n", "e", "s", "s", "s", "e", "n", "n", "n", "n", "s", "e", "e", "e", "e",
                "n", "w", "n", "n", "w", "s", "s", "w", "s", "s", "s", "s", "s", "w", "s", "e", "e", "n", "e", "n", "w", "n", "e", "e", "n", "w", "w"},
    ["enemy"] = {"Kobieta centaurow", "Mlody centaur", "Centaur wojownik", "Kaplanka centaurow", "Dziecko centaurow", "Centaur zwiadowca", "Lider centaurow", "Wojowniczka centaurow", "Kaplan centaurow", "Centaur druid"},
    ["buff"] = "exp",
    ["ident"] = "centaury",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:statekStart(reverse)
  self.conf = {
    ["path"] = {"s", "s", "n", "w", "w", "n", "e", "w", "s", "s", "e", "w", "n", "w", "u", "n", "n", "e", "e", "e", "w", "n", "s", "w", "s", "w", "s",
                "s", "w", "e", "e", "w", "s", "d", "e", "s", "e", "e", "n", "w", "e", "u", "n", "e", "s", "d", "e", "e", "n", "w"},
    ["enemy"] = {"Duch wioslarza", "Duch barczystego marynarza", "Duch pierwszego oficera", "Duch kucharza", "Widmo Risatha", "Duch bosmana"},
    ["buff"] = "exp",
    ["ident"] = "statek",
    ["loot"] = "gleba",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:lodowiecStart(reverse)
  self.conf = {
    ["path"] = {"n", "n", "e", "w", "w", "n", "e", "n", "w", "n", "e", "n", "s", "e", "s", "s", "e", "n", "n", "e", "s", "e", "n", "n", "e", "s", "n", "e", "e", "e",
                "n", "w", "w", "w", "w", "n", "e", "e", "e", "n", "e", "w", "w", "w", "w", "n", "w", "e", "e", "e", "e", "e", "e", "n", "w", "w", "w", "w", "w", "w",
                "n", "n", "e", "s", "e", "e", "e", "n", "w", "w", "n", "e", "w", "n", "n", "n", "n", "e", "s", "s", "s", "e", "s", "e", "s", "e", "s"},
    ["enemy"] = {"Śniezny robal", "Ogromny yeti", "Śniezne monstrum", "Śniezny potwor", "Lodowy golem"},
    ["buff"] = "exp",
    ["ident"] = "lodowiec",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:barbynkStart()
  self.conf = {
    ["path"] = {"wyjście", "d", "s", "d", "s", "s", "s", "w", "w", "w", "n", "n", "n", "e", "e", "e", "n", "n", "n", "w", "w", "w", "w", "w", "w", "s", "s", "s",
                "s", "s", "s", "e", "e", "e", "n", "barak", "wyjście", "chata", "wyjście", "n", "n", "w", "w", "e", "e", "n", "w", "e", "n", "barak", "wyjście",
                "e", "barak"},
    ["enemy"] = {"Wartownik barbarzynca", "Barbarzynska kobieta", "Stary barbarzynca"},
    ["buff"] = "exp",
    ["ident"] = "barbynk",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end

function path:podmrokw2Start(reverse)
  self.conf = {
    ["path"] = { "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w",
                  "s", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w",
                  "w", "w", "w", "s", "s", "w", "w", "w", "w", "w", "w", "n", "w", "w", "w", "w", "w", "w", "w", "w" },
    ["enemy"] = {"Beholder", "Gigantyczny robak", "Drapiezny pajak"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:podmrokn1Start(reverse)
  self.conf = {
    ["path"] = { "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n",
    "n", "e", "e", "e", "e", "e", "e", "e", "e", "n", "n", "e", "n", "e", "e", "e", "e", "e", "e", "e",
    "e", "e", "e", "e", "e", "e", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n",
    "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n", "n" },
    ["enemy"] = {"Gigantyczny robak", "Drapiezny pajak", "Goblin", "Ork"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:pajakiStart()
  self.conf = {
    ["path"] = { "e", "e", "e", "e", "e", "e", "e", "stopnie", "u", "e", "d", "e", "s", "e", "e", "e", "s",
                 "e", "s", "s", "s", "s", "w", "w", "w", "w", "s", "w", "s", "w", "e", "n", "e", "n", "n", "e", "w",
                  "n", "w", "n", "w", "w", "w", "w", "s", "w", "s", "s", "s", "s", "w", "s", "s",
                  "e", "e", "e", "n", "e", "n", "s", "s", "e", "e", "e", "e", "e", "e", "e", "e", "e", "n", "n", "s", "s",
                  "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "n", "e", "n", "e", "w",
                  "n", "w", "w", "n", "w", "n", "n", "e", "w", "s", "w", "w", "n", "w", "n", "w", "n", "w", "w", "n", "w", "n",
                  "e", "e", "e", "e", "e", "s", "s", "e", "s", "e", "e", "e", "e", "n", "n", "n", "e", "e",
                  "s", "s", "w", "s", "s", "s", "e", "s", "w", "w", "w", "w", "s", "e", "e", "s", "s", "w", "s", "w", "w",
                  "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w",
                  "d", "d", "w", "w", "w"},
    ["enemy"] = {"Ogromny pajak", "Paskudny pajak", "Drapiezny pajak", "Gigantyczny robak"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  exp:start(self.conf)
end

function path:podmroke1Start(reverse)
  self.conf = {
    ["path"] = {  "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
                  "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e",
                  "n", "n", "n", "e", "n", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "n", "n", "n", "n",
                  "n", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e", "e" },
    ["enemy"] = {"Gigantyczny robak", "Drapiezny pajak"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:podmroks1Start(reverse)
  self.conf = {
    ["path"] = { "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s",
                  "s", "s", "s", "e", "e", "e", "e", "e", "e", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s",
                  "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "e", "e", "e", "e", "e", "e", "e", "e",
                  "e", "e", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "e", "e", "e",
                  "e", "e", "s", "s", "s", "s", "s", "s", "s", "s", "s", "s", "e", "e", "e", "e", "e", "e", "e", "e",
                  "e", "e", "e", "e", "e", "e", "e", "e", "e", "e" },
    ["enemy"] = {"Gigantyczny robak", "Drapiezny pajak", "Dlugi bialy waz"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end

function path:podmrokw1Start(reverse)
  self.conf = {
    ["path"] = { "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w",
                  "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "n", "n", "w", "w", "w", "w",
                  "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w",
                  "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w", "w" },
    ["enemy"] = {"Gigantyczny robak", "Drapiezny pajak"},
    ["buff"] = "exp",
    ["ident"] = "podmrok",
    ["loot"] = "cialo",
  }
  if reverse then
    self.conf.path = path:reverseDirection(utils:rArray(self.conf.path))
  end
  exp:start(self.conf)
end
