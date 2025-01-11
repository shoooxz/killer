footer = footer or {}
footer.height = 150
footer.promptHeight = 50
footer.baseFunc = {
	[1] = {
		["name"] = "Stand",
		["func"] = function()
			 send("stand")
			 state:wakeTeam()
			 state:orderTeam("stand")
		end,
		["style"] = ""
	},
	[2] = {
		["name"] = "Rest",
		["func"] = function()
			 state:orderTeam("rest;medi")
			 send("rest")
			 send("medit")
		end,
		["style"] = ""
	},
	[3] = {
		["name"] = "Sleep",
		["func"] = function()
		 	state:orderTeam("sleep")
			send("sleep")
		end,
		["style"] = ""
	},
	[4] = {
		["name"] = "Learn",
		["func"] = function()
			send("learn")
			state:orderTeam("learn")
		end,
		["style"] = ""
	},
	[5] = {
		["name"] = "Jablon",
		["func"] = function()
			for i = 1, 25 do
			  send("zerwij jablko; get jablko")
			end
		end,
		["style"] = ""
	},
	[6] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
	[7] = {
		["name"] = "Rent",
		["func"] = function()
			state:orderTeam("rent here")
			send("rent here")
		end,
		["style"] = ""
	},
	[8] = {
		["name"] = "Fly",
		["func"] = function()
			local s = profile:get("fly")
			send("c "..s.."; c "..s.." "..profile:get("sub"))
		end,
		["style"] = ""
	},
	[9] = {
		["name"] = "Light",
		["func"] = function()
			send("c light; wear kula")
		end,
		["style"] = ""
	},
	[10] = {
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
	-- pozniej moze to przerzucic do opcji
	character.warriorEnabled = true
	character.necroEnabled = true
	-----------------------------------------------------
	self.width = settings:get("mainWindowWidth")-settings:get("mapperWidth")-10
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

function footer:createUI()
	setBorderBottom(self.height+self.promptHeight)

	footer.overlay = Geyser.Label:new({
	  name = "MyButtons.Overlay",
	  x = 0, y = -self.height,
	  width = self.width,
	  height = self.height,
	})

	footer:createButtons("Basic2", footer.baseFunc, 100, false, [[
				background-color: rgba(135,206,250,100);
				border-style: solid;
				border-width: 1px;
				border-color: white;
				border-radius: 5px;
				margin: 5px;
				qproperty-wordWrap: true;
				padding: 0px;
	]])

	if character.warriorEnabled then
		footer:createButtons("Warrior", character.warrior, 0, footer:fastSkillCallback(),  [[
					background-color: #905923;
					border-style: solid;
					border-width: 1px;
					border-color: white;
					border-radius: 5px;
					margin: 5px;
					qproperty-wordWrap: true;
					padding: 0px;
			]])
	end

	if character.necroEnabled then
		footer:createButtons("Necro", character.necro, 50, footer:fastSpellCallback(), [[
					background-color: #9400d3;
					border-style: solid;
					border-width: 1px;
					border-color: white;
					border-radius: 5px;
					margin: 5px;
					qproperty-wordWrap: true;
					padding: 0px;
			]])
	end
end

function footer:fastSpellCallback()
	return function(i)
		local v = "c '"..profile:get("k"..i).."'"
		state:orderSub(v)
		send(v)
	end
end

function footer:fastSkillCallback()
	return function(i)
		local v = profile:get("s"..i)
		state:orderSub(v)
		send(v)
	end
end

function footer:setFastSpellLabel(i, name)
	footer.buttons["MyButtonNecro"..i]:echo("<center>"..name)
end

function footer:setFastSkillLabel(i, name)
	footer.buttons["MyButtonWarrior"..i]:echo("<center>"..name)
end

function footer:createButtons(name, data, y, func, style)
	footer.container[name] = Geyser.HBox:new({
		name = "MyButtons.TopHBox"..name,
		x = 0, y = y,
		width = "100%",
		height = 50,
		color = "black",
		fgColor = "black"
	}, footer.overlay)
	for i=1,10 do
			footer.buttons["MyButton"..name..i] = Geyser.Label:new({
				name = "MyButtons.Button"..name..i,
			}, footer.container[name])
			footer.buttons["MyButton"..name..i]:echo("<center>"..data[i]["name"])
			footer.buttons["MyButton"..name..i]:setStyleSheet(style)
			footer.buttons["MyButton"..name..i]:setFontSize(12)
			local callback = data[i]["func"]
			if func then
				callback = function() func(i) end
			else

			end
			footer.buttons["MyButton"..name..i]:setClickCallback(callback)
	end
end
