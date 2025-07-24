footer = footer or {}
footer.promptHeight = 50
footer.buttonHeight = 60
footer.count = 7
footer.action = {}
footer.actionPick = false
footer.btnDefault = [[
			background-color: #111111;
			border-style: solid;
			border-width: 1px;
			border-color: black;
			qproperty-wordWrap: true;
			padding: 0px;
 ]]
footer.btnEmpty = [[
			background-color: #555555;
			border-style: solid;
			border-width: 1px;
			border-color: black;
			qproperty-wordWrap: true;
			padding: 0px;
 ]]
footer.btnChange = [[
			background-color: #222222;
			border-style: dotted;
			border-width: 1px;
			border-color: #00FFFF;
			qproperty-wordWrap: true;
			padding: 0px;
 ]]
footer.btnBasic = [[
			background-color: rgba(135,206,250,100);
			border-style: solid;
			border-width: 1px;
			border-color: black;
			qproperty-wordWrap: true;
			padding: 0px;
]]
footer.baseFunc = {
	[15] = {
		["name"] = "Stand",
		["func"] = function()
			 send("stand")
			 state:wakeTeam()
			 state:orderTeam("stand")
		end,
		["style"] = ""
	},
	[16] = {
		["name"] = "Rest",
		["func"] = function()
			 state:orderTeam("rest;recup;medi")
			 send("rest")
			 send("recup")
			 send("medit")
		end,
		["style"] = ""
	},
	[17] = {
		["name"] = "Sleep",
		["func"] = function()
		 	state:orderTeam("sleep")
			send("sleep")
		end,
		["style"] = ""
	},
	[18] = {
		["name"] = "Rent",
		["func"] = function()
			state:orderTeam("rent here")
			send("rent here")
		end,
		["style"] = ""
	},
	[19] = {
		["name"] = "Fly",
		["func"] = function()
			local s = profile:get("fly")
			send("c "..s.."; c "..s.." "..profile:get("sub"))
		end,
		["style"] = ""
	},
	[20] = {
		["name"] = "Light",
		["func"] = function()
			send("c light; wear kula")
		end,
		["style"] = ""
	},
	[21] = {
		["name"] = "Pic/Jesc",
		["func"] = function()
			inventory:eat()
		end,
		["style"] = ""
	},
}
footer.container = {}
footer.overlay = {}
footer.buttons = {}

function footer:init()
	self.width = settings:get("mainWindowWidth")-settings:get("mapperWidth")-10
	self.promptHeight = settings:applyDpiScaling(self.promptHeight)
	self.buttonHeight = settings:applyDpiScaling(self.buttonHeight)
	self.height = 3*self.buttonHeight
	self:createUI()
	self:createPrompt()
end

function footer:createPrompt()
	self.prompt = Geyser.Label:new({
		name = "Footer.Prompt",
		x = 0, y = -(self.height+self.promptHeight),
		width = self.width,
		height = self.promptHeight,
	})
	self.prompt:setFontSize(15)
	self.prompt:setStyleSheet([[background-color: black]])
end

function footer:promptFight(matches)
	self.prompt:echo(copy2html(matches[2]))
	deleteLine()
end

function footer:promptUpdate()
	-- TODO sprawdzic czy to sprawia, ze jest czarny prompt
	-- "[<Lin: (******  )>n:k ] "  dziwny prompt jak jest walka
	if string.find(getCurrentLine(), ": %(") then
		-- walka
		deleteLine()
	else
		-- normalka
		self.prompt:echo(copy2html())
		deleteLine()
	end
end

-------------------------------------------------------------------------------
-- TODO ogarnac right UI albo zrobic cos innego
function footer:createRightUI()
	footer.right = Geyser.Label:new({
		name = "MyButtons.FooterRight",
		x = footer.width+10, y = -70,
		height = 70,
		width = settings:get("mapperWidth")-20
	})
	footer.right:raise()
	local btnStyle = [[
				background-color: rgba(135,206,250,100);
				border-style: solid;
				border-width: 0px;
				border-color: white;
				border-radius: 0px;
				margin: 0px;
				padding: 0px;
	]]
	self:createButton("RES", function() echo("sraka") end, btnStyle, 10)
	self:createButton("BMS", function() buff:basicCast("ms") end, btnStyle, 80)
	self:createButton("BM", function() buff:basicCast("m")  end, btnStyle, 150)
	self:createButton("BS", function() buff:basicCast("s")  end, btnStyle, 220)
end

function footer:createButton(name, func, style, x)
	footer.buttons["FRight"..name] = Geyser.Label:new({
		name = "Fright.Button"..name,
		width =  60,
		height = 50,
		x = x
	}, footer.right)
	footer.buttons["FRight"..name]:echo("<center>"..name)
	footer.buttons["FRight"..name]:setStyleSheet(style)
	footer.buttons["FRight"..name]:setFontSize(10)
	if func then
		callback = function() func(i) end
	end
	footer.buttons["FRight"..name]:setClickCallback(callback)
	footer.buttons["FRight"..name]:raise()
end
------------------------------------------------------------------------------

function footer:createUI()
	setBorderBottom(self.height+self.promptHeight)
	footer.overlay = Geyser.Label:new({
	  name = "MyButtons.Overlay",
	  x = 0, y = -self.height,
	  width = self.width,
	  height = self.height,
	})
	footer:createButtons("Row1",
		0, 1,
		footer:fastSkillCallback(),
		self.btnEmpty,
		{}
	)
	footer:createButtons("Row2",
		self.buttonHeight, 1+self.count,
		footer:fastSpellCallback(),
		self.btnEmpty,
		{}
	)
  footer:createButtons("Row3",
		2*self.buttonHeight, 1+2*self.count,
		false,
		self.btnBasic,
		footer.baseFunc
	)
end

function footer:fastSpellCallback()
	-- order na c nie dziala jak master nie ma castera
	return function(i)
		i= i-7 -- WYJEBAC TO WYJEBAC TO WYJEBAC TO

		local v = "c '"..profile:get("k"..i).."'"
		state:orderSub(v)
		send(v)
	end
end

function footer:fastSkillCallback()
	return function(i)
		if i > 7 then return false end -- WYJEBAC TO WYJEBAC TO WYJEBAC TO

		local v = profile:get("s"..i)
		state:orderSub(v)
		send(v)
	end
end

function footer:setFastSpellLabel(i, name)
	--footer.buttons["Footer.Button"..i]:echo("<center>"..name)
end

function footer:setFastSkillLabel(i, name)
	--footer.buttons["Footer.Button"..i]:echo("<center>"..name)
end

function footer:getActionIdent(slot)
	return "Footer.Button"..slot
end

function footer:getActionButton(slot)
	return footer.buttons[self:getActionIdent(slot)]
end

function footer:getAction(slot)
	return footer.action[slot]
end

function footer:createButtons(name, y, index, func, style, data)
	footer.container[name] = Geyser.HBox:new({
		name = "Footer."..name,
		x = 0, y = y,
		width = "100%",
		height =  self.buttonHeight,
		color = "black",
		fgColor = "black"
	}, footer.overlay)
	for i=index, index+self.count-1 do
		local ident = self:getActionIdent(i)
		footer.buttons[ident] = Geyser.Label:new({
			name = ident,
		}, footer.container[name])
		footer.buttons[ident]:setStyleSheet(style)
		footer.buttons[ident]:setFontSize(12)
		if next(data) then
			footer.buttons[ident]:setClickCallback(data[i]["func"])
			footer.buttons[ident]:echo("<center>"..data[i].name)
		else
			footer.buttons[ident]:echo("<center>")
			footer.buttons[ident]:setClickCallback(function() func(i) end)
		end
	end
end

function footer:actionMode(state)
	self.actionPick = state
	if state then
		self:actionStart()
	else
		self:actionStop()
	end
end

function footer:actionStart()
	for i=1,self.count*2 do
		local btn = self:getActionButton(i)
		btn:setStyleSheet(self.btnChange)
		btn:setClickCallback(function()
			printer:actionPick1(i)
		end)
	end

end

function footer:actionStop()
end

function footer:actionSet(slot, type, name, cast, color)
	local save = tostring(type).."#"..name.."#"..tostring(cast).."#"..color
	profile:set("a"..tostring(slot), save)
	self:actionLoad(slot, save, true)
end

function footer:actionLoad(slot, str, skipStyle)
	if str then
		local data = utils:split(str, "#")
		self.action[slot] = {
			["type"] = data[1],
			["name"] = data[2],
			["cast"] = data[3],
		}
 		local btn = self:getActionButton(slot)
		btn:cecho("<center><b><"..data[4]..">"..utils:abbr(data[2]))

		if not skipStyle then
			btn:setStyleSheet(self.btnDefault)
		end
	else
		-- default action state
	end
end

function footer:actionDelete(slot)
	self:actionLoad(slot, false, true)
end
