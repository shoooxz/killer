function mapper:helper()
	if self.drawing then
		-- porownaj wyjscia z gmcp z wyjsciami z mappera

		local diff = utils:arrayDiff(self.gmcp.exits, self:helperGetExitsForComparison())
		if next(diff) then
			  for i=1, #diff do
					self:addStub(diff[i])
				end
				--[[
				tempTimer(0.5, function()
					printer:error("Mapper Pomocnik",
						"Nie zmapowano wyjsc: "..table.concat(diff, ", ")
					)
				end)
				]]--
		end
	end
end

function mapper:helperGetExitsForComparison()
	local exits =  self.room.exits
	local special = getSpecialExitsSwap(self.room.id)
	local output = {}
	for k, v in pairs(exits) do
		table.insert(output, self.en2short[k])
	end
	for k, v in pairs(special) do
		if self.spe2dir[k] then
			table.insert(output, self.spe2dir[k])
		end
	end
	return output
end

function mapper:showConnected()
	if self.room.id then
		local connected = {
			["n"] = getRoomUserData(self.room.id, "n"),
			["s"] = getRoomUserData(self.room.id, "s"),
			["w"] = getRoomUserData(self.room.id, "w"),
			["e"] = getRoomUserData(self.room.id, "e"),
			["nw"] = getRoomUserData(self.room.id, "nw"),
			["ne"] = getRoomUserData(self.room.id, "ne"),
			["sw"] = getRoomUserData(self.room.id, "sw"),
			["se"] = getRoomUserData(self.room.id, "se"),
			["d"] = getRoomUserData(self.room.id, "d"),
			["u"] = getRoomUserData(self.room.id, "u"),
		}
		local out = {}
		for k, v in pairs(connected) do
			if v ~= "" then
				table.insert(out, {
					k,
					v
				})
			end
		end
		printer:connectedInfo(out)
	end
end
