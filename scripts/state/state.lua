state = state or {}
state.lsheight = 500
state.team = {}

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

  local test = "bonk"

  ls:clear()
  ls:cechoLink("<green>>>", [[state:link("]] .. test .. [[")]], "", true)
end

function state:link(id)

  echo(id)

end



function state:gmcpRoomPeople()
  --[[
  People = { {
    enemy = "   ",
    is_fighting = false,
    name = "Meier"
  },
  ]]--
    --echo(gmcp.Room.People[1].name)
  return function()

    ls:clear()
    for k, v in pairs(gmcp.Char.Group.members) do
      state.team[v.name] = v
      state.team[v.name].mv = state:getMove(state.team[v.name].mv)
      state.team[v.name].hp = state:getHealth(state.team[v.name].hp)

      local test = "bonk"
      ls:cechoLink("<green>>>", [[state:link("]] .. test .. [[")]], "", true)
      ls:cecho(v.name..'\n')


    end


  end

end

function state:getHealth(state)
  local man = {
    ["żadnych śladów"] = 8,
    ["zadrapania"] = 7,
    ["lekkie rany"] = 6,
    ["średnie rany"] = 5,
    ["ciężkie rany"] = 4,
    ["ogromne rany"] = 3,
    ["ledwo stoi"] = 2,
    ["umiera"] = 1
  }
  local construct = {
    ["żadnych śladów"] = 8,
    ["zadrapania"] = 7,
    ["lekkie uszkodzenia"] = 6,
    ["średnie uszkodzenia"] = 5,
    ["ciężkie uszkodzenia"] = 4,
    ["ogromne uszkodzenia"] = 3,
    ["ledwo stoi"] = 2,
    ["unieruchomiony"] = 1
  }
  if man[state] then
    return man[state]
  elseif construct[state] then
    return construct[state]
  else
    printer:one("State", "Podane zycie w gmcp nie istnieje")
    return 0
  end
end

function state:getMove(state)
  local man = {
    ["wypoczęty"] = 5,
    ["lekko zmęczony"] = 4,
    ["zmęczony"] = 3,
    ["bardzo zmęczony"] = 2,
    ["zamęczony"] = 1
  }
  local woman = {
    ["wypoczęta"] = 5,
    ["lekko zmęczona"] = 4,
    ["zmęczona"] = 3,
    ["bardzo zmęczona"] = 2,
    ["zamęczona"] = 1
  }
  if man[state] then
    return man[state]
  elseif woman[state] then
    return woman[state]
  else
    printer:one("State", "Podane zmeczenie w gmcp nie istnieje")
    return 0
  end
end


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
