state = state or {}
state.lsheight = 500
state.team = {}
state.groupNaming = {"B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "R", "S", "T", "Q", "W", "V", "X", "Y", "Z"}

function state:init()
  state:createLocationState()
  scripts.events["gmcpRoomPeople"] = registerAnonymousEventHandler("gmcp.Room.People", self:gmcpRoomPeople())

end

function state:createLocationState()
  ls = Geyser.MiniConsole:new({
    name="locationState",
    x=-settings:get("mapperWidth"), y=-self.lsheight,
    autoWrap = true,
    color = "black",
    scrollBar = false,
    fontSize = 15,
    width=settings:get("mapperWidth"), height=self.lsheight,
  })
end

function state:rescue(name)
  send("rescue "..name)
end

function state:gmcpRoomPeople()
  return function()

    ls:clear()
    local me = {}
    local mate = {}
    local npc = {}
    --[[
    enemy = "Giraz ogrodnik",
    is_fighting = true,
    name = "Meier"
    ]]
    local enemy = {}
    local attacking = {}
    local loc = utils:shallowCopy(gmcp.Room.People)
    local namingInc = 1

    for index, v in pairs(gmcp.Char.Group.members) do
      local obj = v
      -- convert data
      obj.mv = state:getMove(obj.mv)
      obj.hp = state:getHealth(obj.hp)
      obj.is_fighting = false
      obj.tank = false
      obj.attackers = ""

      -- index abcdefg for the team
      if obj.name == profile.name then
        obj.index = "A"
      else
        obj.index =  state.groupNaming[namingInc]
        namingInc = namingInc+1
      end

      for i, p in pairs(gmcp.Room.People) do
         -- jesli osoba na lokacji jest osoba z teamu
        if p.name == obj.name then
          -- ustal, kogo atakuje
          if not attacking[p.enemy] then
            attacking[p.enemy] = ""
          end
          attacking[p.enemy] = attacking[p.enemy]..obj.index..","
        end
          -- jesli ktoras z osob w lokacji atakuje kogos z teamu
        if p.enemy == obj.name then
          -- staje sie enemy
          table.insert(enemy, p)
          obj.attackers = obj.attackers..#enemy..","
          loc[i] = nil
          -- a dany obiekt tankiem
          obj.tank = true
        elseif p.name == obj.name then
            loc[i] = nil
        end
      end
      -- order objects
      if obj.name == profile.name then
        me = obj
        me.name = "JA"
        state.myroom = me.room
      else
        if obj.is_npc then
          table.insert(npc, obj)
        else
          table.insert(mate, obj)
        end
      end
    end

    -- print all    me > mates > npc
    state:printTeamMember(me)
    for _, v in pairs(mate) do
      state:printTeamMember(v)
    end
    for _, v in pairs(npc) do
      state:printTeamMember(v)
    end
    -- enemy
    for i, v in pairs(enemy) do
      state:printEnemy(i, v, attacking[v.name])
    end
    -- neutral
    for _, v in pairs(loc) do
      state:printNeutral(v)
    end

  end
end

function state:printNeutral(obj)
  obj.name = utils:replacePolish(obj.name)
  ls:echo("   ")
  ls:echo(obj.name)
  ls:echo("\n")
end

function state:printEnemy(i, obj, att)
  obj.name = utils:replacePolish(obj.name)
  ls:echo("   ")
  ls:cecho("<white>[<white>"..self:twoSpaceNumber(i).."<white>] ")
  ls:cecho("<ansi_magenta>"..obj.name)
  if att then
    -- usun ostatni przecinek
    ls:cecho("<red> << <white>["..att:sub(1, -2).."]")
  end
  ls:echo("\n")
end

function state:getNameColor(obj)
  if obj.room ~= state.myroom then
    return "<dark_slate_blue>"
  else
    return "<white>"
  end
end

function state:printTeamMember(obj)
  obj.name = utils:replacePolish(obj.name)
  if obj.name == "JA" then
    ls:echo("   ")
  else
    ls:cechoLink("<white>(<green>R<white>)", [[state:rescue("]] .. obj.name .. [[")]], "", true)
  end
  local index = "<white>[<white> "..obj.index.."<white>]"
  ls:cecho(index.." "..obj.hp.." "..obj.mv.." "..self:getNameColor(obj)..obj.name)
  if obj.attackers ~= "" then
    -- usun ostatni przecinek
    ls:cecho("<red> << <white>["..obj.attackers:sub(1, -2).."]")
  end
  ls:echo("\n")
end

function state:getHealth(state)
  local man = {
    ["żadnych śladów"] =        "<green>#######",
    ["zadrapania"] =            "<green>###### ",
    ["lekkie rany"] =           "<green>#####  ",
    ["średnie rany"] =          "<yellow>####   ",
    ["ciężkie rany"] =          "<yellow>###    ",
    ["ogromne rany"] =          "<red>##     ",
    ["ledwo stoi"] =            "<red>#      ",
    ["umiera"] =                "<red>       "
  }
  local construct = {
    ["żadnych śladów"] =        "<green>#######",
    ["zadrapania"] =            "<green>###### ",
    ["lekkie uszkodzenia"] =    "<green>#####  ",
    ["średnie uszkodzenia"] =   "<yellow>####   ",
    ["ciężkie uszkodzenia"] =   "<yellow>###    ",
    ["ogromne uszkodzenia"] =   "<red>##     ",
    ["ledwo stoi"] =            "<red>#      ",
    ["unieruchomiony"] =        "<red>       "
  }
  local left = "<white>["
  local right = "<white>]"
  if man[state] then
    return left..man[state]..right
  elseif construct[state] then
    return left..construct[state]..right
  else
    printer:one("State", "Podane zycie w gmcp nie istnieje")
    return 0
  end
end

function state:getMove(state)
  local man = {
    ["wypoczęty"] =         "<pale_green>#####",
    ["lekko zmęczony"] =    "<pale_green>#### ",
    ["zmęczony"] =          "<khaki>###  ",
    ["bardzo zmęczony"] =   "<khaki>##   ",
    ["zamęczony"] =         "<indian_red>#    ",
  }
  local woman = {
    ["wypoczęta"] =         "<pale_green>#####",
    ["lekko zmęczona"] =    "<pale_green>#### ",
    ["zmęczona"] =          "<khaki>###  ",
    ["bardzo zmęczona"] =   "<khaki>##   ",
    ["zamęczona"] =         "<indian_red>#    ",
  }
  local left = "<white>["
  local right = "<white>]"
  if man[state] then
    return left..man[state]..right
  elseif woman[state] then
    return left..woman[state]..right
  else
    printer:one("State", "Podane zmeczenie w gmcp nie istnieje")
    return 0
  end
end

function state:twoSpaceNumber(i)
  if string.len(i) == 1 then
    return " "..i
  else
    return i
  end
end


--[[
},
People = { {
    enemy = "Giraz ogrodnik",
    is_fighting = true,
    name = "Meier"
  }, {
    enemy = "   ",
    is_fighting = false,
    name = "Krasnoludzkie dziecko"
  }, {
    enemy = "Meier",
    is_fighting = true,
    name = "Giraz ogrodnik"
  }, {
    enemy = "   ",
    is_fighting = false,
    name = "Krasnoludzkie dziecko"
  } }
]]--
  --echo(gmcp.Room.People[1].name)

--[[

Group = {
  leader = "Meier",
  members = { {
      hp = "żadnych śladów",
      is_npc = false,
      mem = 0,
      mv = "wypoczęty",
      name = "Meier",
      pos = "stoi",
      room = 109
    }, {
      hp = "żadnych śladów",
      is_npc = false,
      mem = 0,
      mv = "wypoczęty",
      name = "Link",
      pos = "stoi",
      room = 109
    } }
},

]]