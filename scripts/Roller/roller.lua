roller = roller or {}
roller.maxStats = roller.maxStats or {}
roller.running = false
roller.targetStats = { sum = 466, str=75, wis=75, dex=75, con=75, cha=75, int=75}

-- by Laszlo
function roller:help()
  printer:rollerHelp()
end

--^/roller_target sum=(.*), str=(.*), dex=(.*), con=(.*), int=(.*), wis=(.*), cha=(.*).*$
function roller:target(sum, str, dex, con, int, wis, cha)
  self.targetStats = { sum = tonumber (sum), str=tonumber (str), wis=tonumber (wis), dex=tonumber (dex), con=tonumber (con), cha=tonumber (cha), int=tonumber (int)}
  printer:one("Roller", "Ustawione", False)
end


function roller:start()
  self.running = true
  send("nie")
end

function roller:stop()
  self.running = false
end

function roller:catch(multimatches)
  local str = tonumber ( multimatches[1][2] )
  local int = tonumber ( multimatches[1][3] )
  local wis = tonumber ( multimatches[2][2] )
  local dex = tonumber ( multimatches[2][3] )
  local con = tonumber ( multimatches[3][2] )
  local cha = tonumber ( multimatches[3][3] )
  local sum = str + int + wis + dex + con + cha
  local localStats = { sum = sum, str = str, int = int, wis = wis, dex = dex, con = con, cha = cha}

  --getting highest rolls
  if self.maxStats["str"] == nil or self.maxStats["str"] < str then self.maxStats["str"] = str end
  if self.maxStats["int"] == nil or self.maxStats["int"] < int then self.maxStats["int"] = int end
  if self.maxStats["wis"] == nil or self.maxStats["wis"] < wis then self.maxStats["wis"] = wis end
  if self.maxStats["dex"] == nil or self.maxStats["dex"] < dex then self.maxStats["dex"] = dex end
  if self.maxStats["con"] == nil or self.maxStats["con"] < con then self.maxStats["con"] = con end
  if self.maxStats["cha"] == nil or self.maxStats["cha"] < cha then self.maxStats["cha"] = cha end
  if self.maxStats["sum"] == nil or self.maxStats["sum"] < sum then self.maxStats["sum"] = sum end

  -- validate
  local targetStats = {}
  local targetImprove = {}
  local match = 0
  for name, _ in pairs(localStats) do
    if localStats[name] >= self.targetStats[name] then
      match = match + 1
      targetStats[name] = {"green", localStats[name]}
    else
      targetStats[name] = {"red", localStats[name]}
    end
    if localStats[name] ==  self.maxStats[name] then
      -- place to improve
      targetImprove[name] = {"green", "Yes"}
    else
      targetImprove[name] = {"red", "No"}
    end
  end

  local render = {
    {
      "Suma",
      sum,
      self.maxStats["sum"],
      targetStats["sum"],
      targetImprove["sum"]
    },
    {
      "STR",
      str,
      self.maxStats["str"],
      targetStats["str"],
      targetImprove["str"]
    },
    {
      "DEX",
      dex,
      self.maxStats["dex"],
      targetStats["dex"],
      targetImprove["dex"]
    },
    {
      "CON",
      con,
      self.maxStats["con"],
      targetStats["con"],
      targetImprove["con"]
    },
    {
      "INT",
      int,
      self.maxStats["int"],
      targetStats["int"],
      targetImprove["int"]
    },
    {
      "WIS",
      wis,
      self.maxStats["wis"],
      targetStats["wis"],
      targetImprove["wis"]
    },
    {
      "CHA",
      cha,
      self.maxStats["cha"],
      targetStats["cha"],
      targetImprove["cha"]
    }
  }

  printer:roller(render)

  if self.running then
    tempTimer(0.1, function()
      if match == 7 then
        scripts:beep()
      else
        send("nie", false)
      end
    --[[
    for stat, _ in pairs(localStats) do
        local result = roller.ValidateRoll(stat)
        if result == true then
            continue = true
        end
    end

    if continue == true then
        roller.FormatTargetStats()
        send("n")
    else
      echo("OK")
       --send("t` `12`t")
    end
    ]]--
    end )
  end

end
