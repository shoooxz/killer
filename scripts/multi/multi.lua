multi = multi or {}
multi.group = multi.group or {}

function multi:processOrder(who, order)
  -- learn, jesli ktos rozkazuje ci learn, odpal dodatkowo auto learn
  if who == profile:get("master") then
    if order ==  "learn" then
      learn.auto = true
    end
    if order ==  "eat" then
      inventory:eat()
      return
    end
    send(order)
  end
end

--(.*) bedzie teraz chodzil za toba.
function multi:add(name)
  self.group[name] = name
  send("gr "..name)
end

--(.*) przestaje chodzic za toba.
function multi:remove(name)
  -- remove from array lol
  self.group[name] = nil
end

--(.*) kaze wszystkim podazac za soba.
function multi:setLeader(name)
  self.leader = name
  send("fol "..name)
end
