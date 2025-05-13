learn = learn or {}
learn.sessionSpells = {}
learn.sessionSkills = {}
learn.auto = false
learn.i = 1

function learn:startSession()
  learn.sessionSpells = {}
  learn.sessionSkills = {}
  learn.i = 1
end

function learn:moneyShort(pay)
  local arr = utils:splitcommai(pay)
  local nom = {
    "<sienna>",
    "<gray>",
    "<gold>",
    "<cyan>"
  }
  local out = ""
  for i, v in pairs(arr) do
    arr[i] = string.gsub(v, "%D", "")
    if string.len(arr[i]) == 1 then
      arr[i] = "  "..arr[i]
    end
    if string.len(arr[i]) == 2 then
      arr[i] = " "..arr[i]
    end
  end
  for i = 4, 1, -1 do
    if arr[i] then
      out = out..nom[i]..arr[i].."<white>,"
    else
      out = out.."    "
    end
  end
  return "           <white> "..out:sub(1, -2).." "
end

function learn:finish()
  -- ostatnia linjka
  -- skills
  cecho("\n")
  if #learn.sessionSkills > 0 then
    -- learn:all(10, learn.sessionSkills)
    if learn.auto then
      learn:all(10, learn.sessionSkills)
    end
    cechoLink("   <white>(<gold>Learn All Skills<white>)", [[learn:all(10, learn.sessionSkills)]], "", true)
  else
    --send("say Nyc")
  end
  -- spells
  if #learn.sessionSpells > 0 then
    -- learn:all(1, learn.sessionSpells)
    if learn.auto then
      learn:all(1, learn.sessionSpells)
    end
    cechoLink("   <white>(<gold>Learn All Spells<white>)", [[learn:all(1, learn.sessionSpells)]], "", true)
  else
    --send("say Nyc")
  end
  -- turn off auto
  learn.auto = false
  -- order
  cechoLink("   <white><<gold>Order Learn All<white>>", [[send("order "..state.sub.." learn")]], "", true)
end

function learn:click(skill, pay)
  local isPaid = false
  selectCurrentLine()
  local trimmed = utils:trim(skill)
  local hex = utils:rgbToHex(getFgColor())
  if string.len(pay) > 3 then
      pay = string.gsub(pay, " \n", "")
      selectString(pay, 1)
      replace("")
      cecho(learn:moneyShort(pay))
      isPaid = true
  end

  if hex == "0X00FF00" then -- skill niewyuczony
    cechoLink("<white>(<gold>10x<white>)", [[learn:onClick(10, "]]..trimmed..[[")]], "", true)
    if isPaid == false then
      table.insert(learn.sessionSkills, trimmed)
    end
  elseif hex == "0X0000FF" then -- spell niewyuczony
    cechoLink("<white>(<gold>1x<white>)", [[learn:onClick(1, "]]..trimmed..[[")]], "", true)
    table.insert(learn.sessionSpells, trimmed)
  else
    cecho("     ")
  end

  -- stripped bg
  selectCurrentLine()
  if math.fmod(learn.i,2) == 0 then
    setBgColor(17,16,16)
  else
    setBgColor(10,10,10)
  end
  learn.i = learn.i+1
end

function learn:all(max, arr)
    for i, v in pairs(arr) do
      tempTimer(i, function()
        local last = false
        if i == #arr then
          last = true
        end
        learn:onClick(max, v, last)
      end)
    end
end

function learn:onClick(max, skill, last)
  for i=1, max do
	  send("learn "..skill)
    --echo("learn "..skill)
  end
  if last then
    send("say Gotowe")
  end
end

function learn:env(state)
  local sub = profile:get("sub")
  if state == "1" then
    send("order "..sub.." env 1")
    learn:envStart()
  else
    send("order "..sub.." env 0")
    learn:envStop()
  end
end

function learn:envStart()
  printer:success("Learn", "Timer envenom start!")
  enableTimer("env")
end

function learn:envTick()
  local mh = profile:get("mh")
  local oh = profile:get("oh")
  send("envenom "..mh.." jag; envenom "..oh.." jag")
end

function learn:envStop()
  printer:error("Learn", "Timer anulowany!")
  disableTimer("env")
end
