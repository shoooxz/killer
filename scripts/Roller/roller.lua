roller = roller or {}
roller.maxStats = roller.maxStats or {}
roller.running = false

-- by Laszlo

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
  --getting highest rolls
  if roller.maxStats["str"] == nil or roller.maxStats["str"] < str then roller.maxStats["str"] = str end
  if roller.maxStats["int"] == nil or roller.maxStats["int"] < int then roller.maxStats["int"] = int end
  if roller.maxStats["wis"] == nil or roller.maxStats["wis"] < wis then roller.maxStats["wis"] = wis end
  if roller.maxStats["dex"] == nil or roller.maxStats["dex"] < dex then roller.maxStats["dex"] = dex end
  if roller.maxStats["con"] == nil or roller.maxStats["con"] < con then roller.maxStats["con"] = con end
  if roller.maxStats["cha"] == nil or roller.maxStats["cha"] < cha then roller.maxStats["cha"] = cha end
  if roller.maxStats["sum"] == nil or roller.maxStats["sum"] < sum then roller.maxStats["sum"] = sum end

  local render = {
    {
      "Suma",
      sum,
      roller.maxStats["sum"]
    },
    {
      "STR",
      str,
      roller.maxStats["str"],
    },
    {
      "DEX",
      dex,
      roller.maxStats["dex"],
    },
    {
      "CON",
      con,
      roller.maxStats["con"],
    },
    {
      "INT",
      int,
      roller.maxStats["int"],
    },
    {
      "WIS",
      wis,
      roller.maxStats["wis"],
    },
    {
      "CHA",
      cha,
      roller.maxStats["cha"],
    }
  }

  printer:roller(render)

  roller.targetStats = { sum = 468, str=80, wis=80, dex=80, con=80, cha=80, int=83}



  local localStats = { sum = sum, str = str, int = int, wis = wis, dex = dex, con = con, cha = cha}



  function roller.FormatTargetStats()
      local text = "\n<DarkSlateGrey>Target:"
      for stat, value in pairs(roller.targetStats) do
          text = text .. string.format("\n %s >= %s [%s]", tostring(stat), tostring(value), tostring(roller.maxStats[stat]))
      end
      cecho(text)
  end

  function roller.ColorNumber(number, color)
      return color .. tostring(number) .. "<DarkSlateGrey>"
  end

  local continue = false

  function roller.ValidateRoll(name)

      if roller.targetStats[name] == nil then
          return false
      end

      if localStats[name] >= roller.targetStats[name] then
          if localStats[name] < roller.maxStats[name] then
              cecho(string.format("\n<DarkSlateGrey>%s: %s [max: %s]", name, roller.ColorNumber(localStats[name], "<red>"), tostring(roller.maxStats[name])))
          else
              cecho(string.format("\n<DarkSlateGrey>%s: %s [max: %s]", name, roller.ColorNumber(localStats[name], "<green>"), tostring(roller.maxStats[name])))
          end
          return false
      end
      return true
  end

  if self.running then
    tempTimer(0.3, function()
      if sum >= 470 or int >= roller.maxStats["int"] then
        scripts:beep()
      else
        send("nie")
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
