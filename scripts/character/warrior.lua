-- pierwej order zeby nie zatykalo bufforu 
character.warrior = {
	[1] = {
		["name"] = "Wardance",
		["func"] = function()
			state:orderSub("wardance")
			send("wardance")
		end,
		["style"] = ""
	},
	[2] = {
		["name"] = "Disarm",
		["func"] = function()
			state:orderSub("disarm")
			send("disarm")
		end,
		["style"] = ""
	},
	[3] = {
		["name"] = "Sleep",
		["func"] = function()

		end,
		["style"] = ""
	},
	[4] = {
		["name"] = "Learn",
		["func"] = function()

		end,
		["style"] = ""
	},
	[5] = {
		["name"] = "Jablon",
		["func"] = function()

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
