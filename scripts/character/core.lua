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
  send(prefix.."order 1.follower ass")
  send(prefix.."order 2.follower ass")
end
