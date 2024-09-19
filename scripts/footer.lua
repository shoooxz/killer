footer = footer or {}
footer.height = 90
footer.baseFunc = {
	[1] = {
		["name"] = "Stand",
		["func"] = function()
			send("stand")
			state:teamOrder("stand")
		end,
		["style"] = ""
	},
	[2] = {
		["name"] = "Rest",
		["func"] = function()
			send("rest")
			state:teamOrder("rest")
		end,
		["style"] = ""
	},
	[3] = {
		["name"] = "Sleep",
		["func"] = function()
			send("sleep")
			state:teamOrder("sleep")
		end,
		["style"] = ""
	},
	[4] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
	[5] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
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
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
	[8] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
	[9] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
	[10] = {
		["name"] = "Dupa",
		["func"] = function()
			echo("Sraka")
		end,
		["style"] = ""
	},
}



function footer:init()
	self.width = settings:get("mainWindowWidth")-settings:get("mapperWidth")-10
	self:createUI()
end

function footer:createUI()
	setBorderBottom(self.height)
	MyButtons = {}

	-- create a label for the entire margin, for now
	MyButtons.Top = Geyser.Label:new({
	  name = "MyButtons.Top",
	  x = 0, y = -self.height,
	  width = self.width,
	  height = self.height,
	})

	-- create a horizontal box to organise the buttons equally
	MyButtons.TopHBox = Geyser.HBox:new({
	  name = "MyButtons.TopHBox",
	  x = 0, y = 0,
	  width = "100%",
	  height = "100%",
	},MyButtons.Top)

	-- add some buttons to the HBox using a Geyser label
	for i=1,10 do
		  MyButtons["MyButton"..i] = Geyser.Label:new({
		    name = "MyButtons.Button"..i,
		  },MyButtons.TopHBox)
		  MyButtons["MyButton"..i]:echo("<center>"..footer.baseFunc[i]["name"])
			MyButtons["MyButton"..i]:setStyleSheet([[
				background-color: rgba(135,206,250,100);
				border-style: solid;
				border-width: 1px;
				border-color: white;
				border-radius: 5px;
				margin: 5px;
				qproperty-wordWrap: true;
				padding: 10px;
			]])
			MyButtons["MyButton"..i]:setFontSize(15)
			MyButtons["MyButton"..i]:setClickCallback(footer.baseFunc[i]["func"])
	end
end
