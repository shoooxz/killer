character = character or {}

function character:defensiveSpells()
  local def = "c shield; c armor"
  state:orderTeam(def)
  send(def)
end

function character:assist(sub)
  local prefix = ""
  if sub then
    prefix = "order "..sub.." "
  end
  -- kazdy send musi miec prefix, order idzie ze state
  local fol = tonumber(profile:get("follower"))
  if fol > 0 then
    for i=1, fol do
      send(prefix.."order "..i..".follower ass")
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
