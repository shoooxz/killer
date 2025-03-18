multi = multi or {}
multi.group = multi.group or {}

function multi:processOrder(who, order)
  if who == profile:get("master") then
    -- split args
    local arg = utils:split(order, " ")
    -- order
    if order ==  "learn" then
      learn.auto = true
    end
    if string.find(order, "buff") then
      buff:basicCast(arg[2])
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
