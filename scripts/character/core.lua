character = character or {}

function character:defensiveSpells()
  local def = "c shield; c armor"
  state:orderTeam(def)
  send(def)
end

function character:assist()
  local fol = tonumber(profile:get("follower"))
  if fol > 0 then
    for i=1, fol do
      send("order "..i..".follower ass")
    end
  end
end

function character:feeble()
  deleteLine()
  cecho("\n<red>UWAGA! FEEBLE!")
  scripts:beep()
  send("say FEEBLE!")
end


function character:knockdown()
  deleteLine()
  cecho("\n<red>UWAGA! POWALENIE!")
  scripts:beep()
  send("stand")
end


function character:disarm()
  deleteLine()
  cecho("\n<red>UWAGA! ROZBROJENIE!")
  scripts:beep()
  local mh = profile:get("mh")
  local oh = profile:get("oh")
  send("get "..mh)
  if not oh  or oh == "" then
    send("grip "..mh)
  else
    send("wield "..mh)
  end
end

function character:getHealth(state)
  local man = {
    ["żadnych śladów"] = 8,
    ["zadrapania"] =  7,
    ["lekkie rany"] = 6,
    ["średnie rany"] = 5,
    ["ciężkie rany"] = 4,
    ["ogromne rany"] = 3,
    ["ledwo stoi"] = 2,
    ["umiera"] =  1,
  }
  local construct = {
    ["żadnych śladów"] = 8,
    ["zadrapania"] = 7,
    ["lekkie uszkodzenia"] = 6,
    ["średnie uszkodzenia"] = 5,
    ["ciężkie uszkodzenia"] = 4,
    ["ogromne uszkodzenia"] = 3,
    ["ledwo stoi"] = 2,
    ["unieruchomiony"] = 1,
  }
  if man[state] then
    return man[state]
  elseif construct[state] then
    return construct[state]
  else
    return state
  end
end

function character:getMove(state)
  local man = {
    ["wypoczęty"] = 5,
    ["lekko zmęczony"] = 4,
    ["zmęczony"] = 3,
    ["bardzo zmęczony"] = 2,
    ["zamęczony"] =  1,
  }
  local woman = {
    ["wypoczęta"] = 5,
    ["lekko zmęczona"] = 4,
    ["zmęczona"] = 3,
    ["bardzo zmęczona"] = 2,
    ["zamęczona"] = 1,
  }
  if man[state] then
    return man[state]
  elseif woman[state] then
    return woman[state]
  else
    return state
  end
end
