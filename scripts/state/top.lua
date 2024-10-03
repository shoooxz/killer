top = top or {}
top.height = 70
top.overlay = {}

function top:init()
  setBorderTop(self.height)
  self.width = settings:get("mainWindowWidth")-settings:get("mapperWidth")-10
	self.overlay = Geyser.Label:new({
	  name = "Top.Overlay",
	  x = 0, y = 0,
	  width = self.width,
	  height = self.height,
	})
  self.time = Geyser.Label:new({
      width = "25%",
			name = "Top.Time",
      height = "50%",
      x = 0, y=0
	}, self.overlay)
  self.time:echo("<center>Time")
	self.time:setStyleSheet([[
      	background-color: #00000;
        border-style: solid;
        border-width: 1px;
        border-color: white;
        border-left: 0px;
        border-top: 0px;
        border-bottom: 0px;
        margin: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        font-size: 12pt;
  ]])
	self.time:setFontSize(12)

  self.time2 = Geyser.Label:new({
      width = "25%",
			name = "Top.Time2",
      height = "50%",
      y = 25, x = 0
	}, self.overlay)
  self.time2:echo("<center>Time")
	self.time2:setStyleSheet([[
      	background-color: #00000;
        border-style: solid;
        border-width: 1px;
        border-color: white;
        border-left: 0px;
        border-top: 0px;
        border-bottom: 0px;
        margin-top: 10px;
        qproperty-wordWrap: true;
        padding: 0px;
  ]])
	self.time2:setFontSize(12)

  self.sky = Geyser.Label:new({
      width = "25%",
      name = "Top.Weather",
      height = "50%",
      x = "25%", y=0
  }, self.overlay)
  self.sky:echo("<center>Sky")
  self.sky:setStyleSheet([[
        background-color: #00000;
        border-style: solid;
        border-width: 1px;
        border-color: white;
        border-left: 0px;
        border-top: 0px;
        border-bottom: 0px;
        margin: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        font-size: 12pt;
  ]])
  self.sky:setFontSize(12)

  self.sky2 = Geyser.Label:new({
      width = "25%",
      name = "Top.Weather2",
      height = "50%",
      x = "25%", y=25
  }, self.overlay)
  self.sky2:echo("<center>Sky")
  self.sky2:setStyleSheet([[
    background-color: #00000;
    border-style: solid;
    border-width: 1px;
    border-color: white;
    border-left: 0px;
    border-top: 0px;
    border-bottom: 0px;
    margin-top: 10px;
    qproperty-wordWrap: true;
    padding: 0px;
  ]])
  self.sky2:setFontSize(12)

  -- astral
  self.astral = Geyser.Label:new({
      width = "25%",
      name = "Top.Astral",
      height = "50%",
      x = "50%", y=0
  }, self.overlay)
  self.astral:cecho("<center>Astral")
  self.astral:setStyleSheet([[
        background-color: #0C0C0C;
        border-style: solid;
        border-width: 1px;
        border-color: white;
        border-left: 0px;
        border-top: 0px;
        border-bottom: 0px;
        margin: 0px;
        qproperty-wordWrap: true;
        padding: 0px;
        font-size: 11pt;
  ]])


end

function top:astralState(state)

  if state then
    self.astral:setStyleSheet([[
          background-color: #008000;
          border-style: solid;
          border-width: 1px;
          border-color: white;
          border-left: 0px;
          border-top: 0px;
          border-bottom: 0px;
          margin: 0px;
          qproperty-wordWrap: true;
          padding: 0px;
          font-size: 11pt;
    ]])
  else
    self.astral:setStyleSheet([[
          background-color: #800000;
          border-style: solid;
          border-width: 1px;
          border-color: white;
          border-left: 0px;
          border-top: 0px;
          border-bottom: 0px;
          margin: 0px;
          qproperty-wordWrap: true;
          padding: 0px;
          font-size: 11pt;
    ]])
  end


end

function top:setTime(mud)
  local time = mud.TimeInfo
  local weather = mud.Weather
--[[

Wymawiasz slowa, 'astral search'.

Znowu mozesz przeszukiwac plany astralne

TimeInfo = {
day = 20,
dayname = "Przyjaciół",
era = "Pierwsza Era Magicznych Portali",
month = "Wielkiego Zła",
time = 5,
timename = "godzina piąta",
year = 70
]]

  self.time:cecho("<center><white>Godzina: <gold>"..time.time.."    <white>Dzien: "..time.day.." ("..utils:replacePolish(time.dayname)..") ")
  self.time2:cecho("<center><white>Miesiac: "..utils:replacePolish(time.month).." ("..utils:replacePolish(time.era)..") ")
  self.sky:cecho("<center><white>Pogoda: <gold>"..utils:replacePolish(weather.sky))
  self.sky2:cecho("<center><white>Pogoda: "..utils:replacePolish(weather.wind))
end











--[[
gmcp.Mud

{
TimeInfo = {
day = 20,
dayname = "Przyjaciół",
era = "Pierwsza Era Magicznych Portali",
month = "Wielkiego Zła",
time = 5,
timename = "godzina piąta",
year = 70
},
Weather = {
sky = "deszczowe",
wind = "wieje lekko ciepły, południowy wiatr"
}
}




{
  TimeInfo = {
    day = 20,
    dayname = "Przyjaciół",
    era = "Pierwsza Era Magicznych Portali",
    month = "Wielkiego Zła",
    time = 5,
    timename = "godzina piąta",
    year = 70
  },
  Weather = {
    sky = "Nie widać nieba"
  }
}
]]
