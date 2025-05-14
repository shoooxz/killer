top = top or {}
top.height = 100
top.overlay = {}
top.container = {}
top.buttons = {}
top.aff = {}
top.affWidth = 200
top.affHeight = 22
top.affChildren = {}
top.affToColor = {
  ["wardance"] = "cyan",
  ["berserk"] = "cyan",
  ["bladedance"] = "cyan",
  ["bladefury"] = "cyan",
  ["continual light"] = "yellow",
  ["light"] = "yellow",
  ["desert light"] = "yellow",
  ["spiritual light"] = "yellow",
  ["firefly swarm"] = "yellow",
  ["darkvision"] = "yellow",
  ["sneak"] = "dim_grey",
  ["hide"] = "dim_grey",
}
top.affToRemove = {}

function top:init()
  self.height = settings:applyDpiScaling(self.height)
  setBorderTop(self.height)
  self.width = settings:get("mainWindowWidth")-settings:get("mapperWidth")-10
	self.overlay = Geyser.Label:new({
	  name = "Top.Overlay",
	  x = 0, y = 0,
	  width = self.width,
	  height = self.height,
	})
  self:createLeft()
  self:createCondition()
  local buttonStyle = [[
        border-style: solid;
        border-width: 1px;
        border-color: #555555;
        border-bottom: 0px;
        border-right: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
    ]]
  self:createConditionLabels("ConTop", self:getConTop(), 0, buttonStyle)
  self:createConditionLabels("ConBot", self:getConBot(), "50%", buttonStyle)
  self.aff = Geyser.Label:new({
	  name = "Top.Aff",
	  x = self.width-self.affWidth-20, y = self.height+5,
	  width = self.affWidth,
	  height = 10,
	})
  self.aff:setStyleSheet([[
    background-color: black;
  ]])

end

function top:getButtonStyle(state)
  if state then
    return [[
      background-color: #228b22;
      border-style: solid;
      border-width: 1px;
      border-color: #555555;
      border-bottom: 0px;
      border-right: 0px;
      qproperty-wordWrap: true;
      padding: 0px;
      ]]
    else
      return [[
        background-color: #801e18;
        border-style: solid;
        border-width: 1px;
        border-color: #555555;
        border-bottom: 0px;
        border-right: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        ]]
  end
end

function top:getButtonByGmcp(con)
  local conv = {
    ["bleed"] = self.buttons["ConKrwawienie"],
    ["bleedingWound"] = self.buttons["ConRany"],
    ["drunk"] = self.buttons["ConUpicie"],
    ["hungry"] = self.buttons["ConGlod"],
    ["overweight"] = self.buttons["ConPrzeciazenie"],
    ["position"] = self.buttons["ConPozycja"],
    ["sleepy"] = self.buttons["ConSennosc"],
    ["thirsty"] = self.buttons["ConPragnienie"],
  }
  return conv[con]
end

function top:setButtonStyle(btn, state, reverse)
  if state then
    local bg = "#801e18"
    if reverse then
      bg = "#228b22"
    end
    btn:setStyleSheet([[
          background-color: ]]..bg..[[;
          border-style: solid;
          border-width: 1px;
          border-color: #555555;
          border-bottom: 0px;
          border-right: 0px;
          qproperty-wordWrap: true;
          padding: 0px;
    ]])
    btn:setFgColor ("#ffffff")
  else
    btn:setStyleSheet([[
          border-style: solid;
          border-width: 1px;
          border-color: #555555;
          border-bottom: 0px;
          border-right: 0px;
          qproperty-wordWrap: true;
          padding: 0px;
    ]])
    btn:setFgColor ("#444444")
  end
end

function top:setCondition(con)
  for name, value in pairs(con) do
    local btn = self:getButtonByGmcp(name)
    if btn then
      if name == "position" then
          -- position raczej wyjebac, position do okna kondycji, zamiast tego cos niestandardowego
      elseif name == "drunk" then
        self:setButtonStyle(btn, value, true)
      else
        self:setButtonStyle(btn, value)
      end
    end
  end
end

function top:astralState(state)
  if state then
    self.buttons["ConAstral"]:setStyleSheet(self:getButtonStyle(true))
    self.buttons["ConAstral"]:setFgColor("#ffffff")
  else
    self.buttons["ConAstral"]:setStyleSheet(self:getButtonStyle(false))
    self.buttons["ConAstral"]:setFgColor("#ffffff")
  end
end

function top:setTime(mud)
  if mud then
    local time = mud.TimeInfo
    local weather = mud.Weather or {}

    self.time:cecho("<center><white>Godzina: <gold>"..time.time.."    <white>Dzien: "..time.day.." ("..utils:replacePolish(time.dayname)..") ")

    if weather then
      self.sky:cecho("<center><white><gold>"..utils:replacePolish(weather.sky))

    end
  end
end

function top:createLeft()
  self.time = Geyser.Label:new({
      width = "25%",
      name = "Top.Time",
      height = "50%",
      x = 0, y=0
  }, self.overlay)
  self.time:echo("<center>Time")
  self.time:setStyleSheet([[
        border-style: solid;
        border: 0px;
        margin: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        font-size: 12pt;
  ]])
  self.time:setFontSize(12)
  self.sky = Geyser.Label:new({
    width = "25%",
    name = "Top.Weather",
    height = "50%",
    y = "50%", x = 0
  }, self.overlay)
  self.sky:echo("<center>Sky")
  self.sky:setStyleSheet([[
        background-color: #00000;
        border: 0px;
        margin: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        font-size: 12pt;
  ]])
  self.sky:setFontSize(12)
end

function top:createCondition()
  self.conditionOverlay = Geyser.Label:new({
    name = "Top.ConditionOverlay",
    x = "25%", y = 0,
    width = "75%",
    height = self.height,
  }, self.overlay)
end

function top:createConditionLabels(name, data, y, style)
	top.container[name] = Geyser.HBox:new({
		name = "MyButtons.TopCondition"..name,
		x = 0, y = y,
		width = "100%",
		height = "50%",
		color = "black",
		fgColor = "black"
	}, top.conditionOverlay)
	for i=1,5 do
			top.buttons["Con"..data[i]["name"]] = Geyser.Label:new({
				name = "Con.Button"..data[i]["name"],
			}, top.container[name])
			top.buttons["Con"..data[i]["name"]]:echo("<center>"..data[i]["name"])
			top.buttons["Con"..data[i]["name"]]:setStyleSheet(style)
			top.buttons["Con"..data[i]["name"]]:setFontSize(12)
      top.buttons["Con"..data[i]["name"]]:setFgColor ("#444444")
	end
end

function top:getConTop()
  return {
    {["name"] = "Krwawienie"},
    {["name"] = "Rany"},
    {["name"] = "Przeciazenie"},
    {["name"] = "Sennosc"},
    {["name"] = "Aura"},
  }
end

function top:getConBot()
  return {
    {["name"] = "Upicie"},
    {["name"] = "Pozycja"},
    {["name"] = "Glod"},
    {["name"] = "Pragnienie"},
    {["name"] = "Astral"},
  }
end

--[[

{ {
    desc = "Możesz widzieć w ciemnościach",
    ending = false,
    extraValue = <userdata 1>,
    name = "desert light",
    negative = false
  } }

]]--

function top:setAffects(aff)
  self:affClear()
  self.aff:resize(self.affWidth, #aff*self.affHeight)
  local name = ""
  for i = 1, #aff do
    if aff[i].name == "" then
      name = aff[i].desc
    else
      name = aff[i].name
    end
    if not utils:inArray2(name, self.affToRemove) then
      self.affChildren[i] = Geyser.Label:new({
        name = "affChildLabel_" .. i,
        x = 0, y = (i-1)*self.affHeight,
        width = "100%", height = self.affHeight,
      }, self.aff)
      self.affChildren[i]:echo(name)
      self.affChildren[i]:setStyleSheet([[
        background-color: black;
        text-align: right;
        qproperty-alignment: 'AlignRight';
      ]])
      self.affChildren[i]:setFontSize(14)
      self.affChildren[i]:setFgColor(self:affColor(name, aff[i].negative, aff[i].ending))
    end
  end
end

function top:affColor(name, negative, ending)
  if utils:arrayKeyExists(name, self.affToColor) then
    if ending then
      -- swiatlo sie wyczerpuje
      if self.affToColor[name] == "yellow" then
        return "light_yellow"
      else
        return self.affToColor[name]
      end
    else
      return self.affToColor[name]
    end
  end
  if negative then
    return "red"
  else
    if ending then
      return "ansi_green"
    else
      return "green"
    end
  end
end

function top:affClear()
  for _, lbl in pairs(self.affChildren) do
    lbl:hide()
    lbl = nil
  end
  self.affChildren = {}
end
