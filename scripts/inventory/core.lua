inventory = inventory or {}

function inventory:eat()
  local food = profile:get("food")
  local water = profile:get("water")
  --local bag =  profile:get("bag")
  --send("get "..food.." "..bag..";get "..food.." "..bag)
  local f = "eat "..food..";eat "..food..";eat "..food
  local w = "drink "..water..";drink "..water..";drink "..water
  send(f)
  send(w)
  state:orderSub("eat")
end

function inventory:weaponRemove(ret)
  local cmd = ""
  local oh = profile:get("oh")
  if profile:get("mh") == profile:get("oh") then
    cmd = "remove 2."..profile:get("mh")..";"
  else
    cmd = "remove "..profile:get("mh")..";"
  end
  if string.len(oh) > 0 then
    cmd = cmd.."remove "..oh..";"
  end
	if ret then return cmd end
	send(cmd)
end

function inventory:weaponWield(ret)
  local cmd = ""
  local oh = profile:get("oh")
  cmd = "wield "..profile:get("mh")..";"
  if string.len(oh) > 0 then
    cmd = cmd.."hold "..oh..";"
  end
	if ret then return cmd end
	send(cmd)
end
