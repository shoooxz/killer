inventory = inventory or {}
inventory.lootContainer  = "cialo"
inventory.lootEnd = 1
inventory.lootCount = 1
inventory.lootBody = "cialo"

function inventory:lootGems()
  if self.lootBody == "kupa" then
    send("get all.klej "..self.lootContainer)
    send("get kupka "..self.lootContainer)
  end
end

function inventory:tryLoot(count, body)
  self.lootCount = 1
  self.lootEnd = count
  self.lootBody = body
  self.lootContainer = body
  self:lootGems()
  send("exam "..self.lootContainer)
end

function inventory:lootDone()
  setTriggerStayOpen("LOOT", 0)
  self.lootCount = self.lootCount+1
  if self.lootCount > self.lootEnd then
    --display("LOOT END")
    raiseEvent("onBodyLooted")
  else
    self.lootContainer = self.lootCount.."."..self.lootBody
    self:lootGems()
    send("exam "..self.lootContainer)
  end
end

-- dzielo|cymelium|tom|rycina|inkunabul|wolumen|wolumin|folial|foliant|papirus|rekopis|ksiega|ksiazka
function inventory:loot(name)
  local get = {
    "dzielo",
    "cymelium",
    "tom",
    "rycina",
    "inkunabul",
    "wolumen",
    "wolumin",
    "folial",
    "foliant",
    "papirus",
    "rekopis",
    "ksiega",
    "ksiazka",
    "magiczna fiolka",
    "zwoj",
    "(pulsuje)",
    "gigantyczny",
    "kamien mocy",
    "klanowy",
    "esencji zycia",
  }
  -- (pulsuje)
  for i=1, #get do
    if string.find(name, get[i]) then
      if get[i] == "(pulsuje)" then
        local item = utils:trim(string.gsub(name, "%(pulsuje%)", ""))
        scripts:beep()
        scripts:beep()
        scripts:beep()
        send("get '"..item.."' "..self.lootContainer)
      else
        send("get '"..get[i].."' "..self.lootContainer)
      end
    end
  end
end

function inventory:eat()
  local food = profile:get("food")
  local water = profile:get("water")
  local sub = profile:get("sub")
  --local bag =  profile:get("bag")
  --send("get "..food.." "..bag..";get "..food.." "..bag)
  local f = ""
  if food == "owoc" or food == "jagoda" then
    f = "eat "..food.."; eat "..food.."; eat "..food.."; feed "..sub.." "..food.."; feed "..sub.." "..food.."; feed "..sub.." "..food;
  else
    f = "eat "..food..";eat "..food..";eat "..food
  end
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
  state:weaponState(false)
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
  state:weaponState(true)
	send(cmd)
end
