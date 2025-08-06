character = character or {}
character.form = ""

function character:processOrder(who, order)
  if who == profile:get("master") or state:druidMasterCheck(who) then
    -- split args
    local arg = utils:split(order, " ")
    -- order
    if order ==  "learn" then
      learn.auto = true
    end
    if string.find(order, "water") then
      send(keybind:getWaterCommand(arg[2]))
      return
    end
    if string.find(order, "action") then
      footer:actionCallback(tonumber(arg[2]))()
      return
    end
    if string.find(order, "env") then
      if arg[2] == "1" then
        learn:envStart()
      else
        learn:envStop()
      end
      return
    end
    if string.find(order, "wield") then
      if arg[2] == "1" then
        inventory:weaponWield()
      else
        inventory:weaponRemove()
      end
      return
    end
    if string.find(order, "opener") then
      opener:setByName(arg[2])
      return
    end
    if string.find(order, "buff") then
      buff:cast(arg[2])
      return
    end
    if string.find(order, "kill") then
      state:meKill(arg[2])()
      return
    end
    if order ==  "eat" then
      inventory:eat()
      return
    end
    -- x - cast gdy master nie ma castera
    if utils:startsWith(order, "x ") then
      order = "c "..order:sub(3)
    end
    send(order)
  end
end

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
    send("get "..oh)
    send("hold "..oh)
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
