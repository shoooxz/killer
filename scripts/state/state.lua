
state = state or {}
state.team = {}
state.groupNaming = {"b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "r", "s", "t", "q", "w", "v", "x", "y", "z"}
state.iTeamColor = "gold"
state.iEnemyColor = "light_coral"
state.enemyHP = ""
state.tevent = 0
state.opener = false
state.weapon = true
state.druid = "normal"
state.druidMaster = "normal"
state.druidToName = {
  ["bear"] = "Wielki brunatny niedźwiedź",
  ["wolf"] = "Wielki szary wilk",
  ["panther"] = "Wielka czarna pantera",
  ["reform"] = "normal",
}

function state:setDruidMaster(name, form)
  if name == profile:get("master") then
    self.druidMaster = utils:replacePolish(self.druidToName[form])
  end
end

function state:setDruidForm(form)
    self.druid = self.druidToName[form]
end

function state:druidCheck(name)
  if self.druid ~= "normal" then
    return name == self.druid
  end
  return false
end

function state:druidMasterCheck(name)
  if self.druidMaster ~= "normal" then
    return name == self.druidMaster
  end
  return false
end

function state:weaponState(state)
  self.weapon = state
end

function state:init()
  state:createLocationState()
  scripts.events["gmcpRoomPeople"] = registerAnonymousEventHandler("gmcp.Room.People", self:gmcpRoomPeople())
end

function state:catchEnemyHP(hp)
  local plman = {
    ["zadnych sladow"]="żadnych śladów",
    ["srednie rany"]="średnie rany",
    ["ciezkie rany"]="ciężkie rany"
  }
  local plcons = {
    ["zadnych sladow"]="żadnych śladów",
    ["srednie uszkodzenia"]="średnie uszkodzenia",
    ["ciezkie uszkodzenia"]="ciężkie uszkodzenia"
  }
  if plman[hp] then
    state.enemyHP = plman[hp]
  elseif plcons[hp] then
    state.enemyHP = plcons[hp]
  else
    state.enemyHP = hp
  end
end

function state:createLocationState()
  local mapperWidth = settings:get("mapperWidth")
  local mapperHeight = settings:get("mapperHeight")
  local mainHeight = settings:get("mainWindowHeight")
  ls = Geyser.MiniConsole:new({
    name="locationState",
    x=-mapperWidth, y=mapperHeight,
    autoWrap = true,
    color = "black",
    scrollBar = false,
    fontSize = 13,
    width=mapperWidth, height=mainHeight-mapperHeight,
  })
  --setBackgroundColor("locationState",255,0,0,200)
end

function state:wakeTeam()
  for _, v in pairs(state.team) do
      send("wake "..v.name)
  end
end

function state:orderSub(order)
  -- zamen c na x, nie-caster nie mozna dawac orderow z c
  if utils:startsWith(order, "c ") then
    order = "x "..order:sub(3)
  end
  send("order "..state.sub.." "..order)
end

function state:orderTeam(order, skipSub)
  for _, v in pairs(state.team) do
    if skipSub and (v.name == state.sub) then else
      local arr = utils:split(order, ";")
      for _, o in pairs(arr) do
        send("order '"..v.name.."' "..o)
      end
    end
  end
end

function state:addOrder(sub, o)
  if o == "ass" then
    send("order "..sub.." order 1.follower ass")
  end
end

function state:gmcpRoomPeople()
  return function()
    --expandAlias("lua gmcp.Char.Skills")
    if not mapper then return false end
    if not gmcp then return false end
    mapper:detectGMCP()

    ls:clear()
    state.team = {}
    local me = {}
    local npc = {}
    local enemy = {}
    local attacking = {}
    local loc = utils:shallowCopy(gmcp.Room.People)
    local namingInc = 1
    local targetColor = {}

    if not gmcp.Char.Group then return false end

    for index, v in pairs(gmcp.Char.Group.members) do
      local obj = utils:shallowCopy(v)
      -- convert data
      obj.mv = state:getMove(obj.mv)
      obj.hp = state:getHealth(obj.hp)
      obj.is_fighting = false
      obj.tank = false
      obj.attackers = ""

      -- index abcdefg for the team
      if obj.name == profile.name then
        obj.index = "a"
      else
        obj.index =  state.groupNaming[namingInc]
        namingInc = namingInc+1
      end

      for i, p in pairs(gmcp.Room.People) do
         -- jesli osoba na lokacji jest osoba z teamu
        if p.name == obj.name then
          -- COPY people to obj
          obj.is_fighting = p.is_fighting
          -- ustal, kogo atakuje
          if not attacking[p.enemy] then
            attacking[p.enemy] = ""
          end
          -- jesli to ja
          if obj.index == "a" then
            targetColor[p.enemy] = "red"
          end
          attacking[p.enemy] = attacking[p.enemy].."<"..state.iTeamColor..">"..obj.index.."<white>,"
        end
          -- jesli ktoras z osob w lokacji atakuje kogos z teamu
        if p.enemy == obj.name then
          -- staje sie enemy
          table.insert(enemy, p)
          obj.attackers = obj.attackers.."<"..self.iEnemyColor..">"..#enemy.."<white>,"
          loc[i] = nil
          -- a dany obiekt tankiem
          obj.tank = true
          -- jesli tank to ja - opener tankowy
          if obj.name == profile.name and state.opener == false then
            local opener = profile:get("kiopener")
            send(opener, true)
            state.opener = true
          end
          -- MOZE BYC KILKU TANKOW ????? cos tu sie zjebie TODO
          -- ustal enemy do assysty do bsow
          obj.enemy = state:clearTarget(p.name)
        elseif p.name == obj.name then
            loc[i] = nil
        end
      end
      -- order objects
      if obj.name == profile.name or self:druidCheck(obj.name) then
        me = obj
        me.name = "JA"
        state.myroom = me.room
      else
        if obj.is_npc then
          table.insert(npc, obj)
        else
          table.insert(state.team, obj)
        end
      end
    end

    --WSPARCIE ZROBIC CHECK CZY MA BYC
    state:checkForAss(me)

    -- print all    me > mates > npc
    if me then
      state:printTeamMember(me)
    end
    for _, v in pairs(state.team) do
      state:printTeamMember(v)
    end
    for _, v in pairs(npc) do
      state:printTeamMember(v)
    end
    -- enemy
    if next(enemy) then
      for i, v in pairs(enemy) do
        state:printEnemy(i, v, attacking[v.name], targetColor[v.name])
      end
    else
      state.opener = false
    end
    -- neutral
    for _, v in pairs(loc) do
      state:printNeutral(v)
    end

    -- USTAW TOP CO TICK
    top:setTime(gmcp.Mud)
    top:setCondition(gmcp.Char.Condition)
    top:setAffects(gmcp.Char.Affects)
  end

end

  -- jesli ja nie walcze a ktos z teamu zwiazany jest walka
function state:checkForAss(me)
  -- time event co kilka sekund - jest blad spam przy zacince ws przy kilu
  if utils:isTimeEventHappend(self.tevent) then
    if not me.is_fighting then
      for _, mate in pairs(state.team) do
         if mate.is_fighting and me.room == mate.room then
            local kill = profile:get("kill")
            local opener = profile:get("asopener")
            if kill == "kill" then
              send("ass")
            else
              send(kill.." "..mate.enemy)
              send("ass")
            end
            send(opener)
            character:assist()
            self.tevent = utils:setTimeEvent(3)
            return true
        end
      end
    end
  end
end

function state:meKill(enemy)
  return function()
      local kill = profile:get("kill")
      if state.weapon then
        send(kill.." "..enemy)
      else
        send("kill "..enemy)
        send("say Nie mam broni! Nie mam KURWA broni!")
      end
  end
end

function state:orderKill(enemy)
  return function()
      send("order "..state.sub.." kill "..enemy)
  end
end

function state:clearTarget(name)
  if name then
    return string.gsub(utils:replacePolish(name), "{.", "");
  end
end

function state:printNeutral(obj)
  obj.name = state:clearTarget(obj.name)
  ls:cechoLink("<white>(<red>K<white>)", self:meKill(obj.name), "", true)
  ls:cecho(" <slate_grey>Order: ")
  ls:cechoLink("<white><<red>K<white>>", self:orderKill(obj.name), "", true)
  ls:echo(" "..obj.name)
  ls:echo("\n")
end

function state:printEnemy(i, obj, att, targetColor)
  obj.name = state:clearTarget(obj.name)
  ls:echo("   ")
  ls:cecho("<white>[<white><"..state.iEnemyColor..">"..self:twoSpaceNumber(i).."<white>] ")
  if not targetColor then
    targetColor = "light_coral"
  else
    -- jesli moj target, pobierz z triggera hp
    ls:cecho(state:getHealth(state.enemyHP).." ")
  end
  ls:cecho("<"..targetColor..">"..obj.name)
  if att then
    -- usun ostatni przecinek
    ls:cecho("<rosy_brown> ← <white>["..att:sub(1, -2).."]")
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

function state:setSub(name)
  printer:one("Druzyna", "Cel rozkazow ustawiony na "..name)
  self.sub = name
end

function state:setDoubleMem(mem)
  if string.len(mem) == 1 then
    return " "..mem
  end
  return mem
end

function state:printTeamMember(obj)
  obj.name = state:clearTarget(obj.name)

  -- RESUCE
  if obj.name == "JA" then
    ls:cechoLink("<white><<green>R<white>>", [[send("order ]]..self.sub.." rescue "..profile.name..[[")]], "", true)
  else
    if obj.name then
      ls:cechoLink("<white>(<green>R<white>)", [[send("rescue ]]..obj.name..[[")]], "", true)
    else
      --display(obj)
    end
  end

  -- HP MV
  local index = "<white>[<white> <"..self.iTeamColor..">"..obj.index.."<white>]"
  ls:cecho(index.." "..obj.hp.." "..obj.mv.." ")

  -- MEM
  ls:cecho("<white>[<dodger_blue>"..self:setDoubleMem(obj.mem).."<white>] ")

  -- NAME
  if obj.name == "JA" then
    ls:cecho("<white>"..obj.name)
  else
    if self.sub == obj.name then
      ls:echo("*")
    end
    ls:cechoLink(self:getNameColor(obj)..obj.name, [[state:setSub("]] .. obj.name .. [[")]], "", true)
  end

  -- ATTACKERS
  if obj.attackers ~= "" then
    -- usun ostatni przecinek
    ls:cecho("<rosy_brown> ← <white>["..obj.attackers:sub(1, -2).."]")
  end
  ls:echo("\n")
end

function state:getHealth(state)
  local s = character:getHealth(state)
  local health = {
    [8] = "<green>#######",
    [7] = "<green>###### ",
    [6] = "<green>#####  ",
    [5] = "<yellow>####   ",
    [4] = "<yellow>###    ",
    [3] = "<red>##     ",
    [2] = "<red>#      ",
    [1] = "<red>       "
  }
  return "<white>["..health[s].."<white>]"
end

function state:getMove(state)
  local s = character:getMove(state)
  local move = {
    [5] = "<pale_green>#####",
    [4] = "<pale_green>#### ",
    [3] = "<khaki>###  ",
    [2] = "<khaki>##   ",
    [1] = "<indian_red>#    ",
  }
  return "<white>["..move[s].."<white>]"
end

function state:twoSpaceNumber(i)
  if string.len(i) == 1 then
    return " "..i
  else
    return i
  end
end
