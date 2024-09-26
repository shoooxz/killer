function mapper:setWaterBind(from)
	if self.room.id then
		setRoomUserData(self.room.id, "water", from)
		printer:success("Mapper Bindy",
			"Bind `wodopoj` dodany do lokacji!"
		)
	end
end

function mapper:setBind(str)
	if self.room.id and str then
		setRoomUserData(self.room.id, "bind", str)
		printer:success("Mapper Bindy",
			"Bind `"..str.."` dodany do lokacji!"
		)
	else
		printer:error("Mapper Bindy",
			"Nie moge odnalezc ID lokacji, sprobuj /zlok"
		)
	end
end

function mapper:getBind()
	if self.room.id then
		local data = getRoomUserData(self.room.id, "bind")
		if data ~= "" then
			local arr = utils:split(data, '#')
			return arr
		end
	end
end

function mapper:removeBinds()
	if self.room.id then
		clearRoomUserData(self.room.id)
		printer:success("Mapper Bindy",
			"Bindy usuniete z lokacji!"
		)
	end
end

function mapper:roomBinded()
	if gmcp.Room.Info.num then
		local data = getAllRoomUserData(gmcp.Room.Info.num)
		if next(data) then
			--display(mudlet.key)
			--display(data)
			local room = ""
			if data.bind then
				room = room..data.bind..";"
			end
			if room ~= "" then
				keybind:room(room)
			end
			if data.water then
				keybind:water(data.water)
			end
		end
	end
end
