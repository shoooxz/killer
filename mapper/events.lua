function mapper:roomLoaded()
	return function()
		local gmcpID = gmcp.Room.Info.num
		-- connect na wejsciu na lokacje dla wszystkich modow
		if self.drawing and self.draw and self.draw.connect then
			local to = nil
			if self.mode == 4 then
				to = gmcpID
			else
				to = self.draw.to
			end
			self:connectRooms(self.draw.from, to, self.draw.dir)
			-- obustronnie
			if self.mode == 2 then
				self:connectRooms(to, self.draw.from, self.shortMirror[self.draw.dir])
			end
			-- centruj bez gmcp
			if self.mode == 3 then
				self:center(self.draw.to)
			end
		end
		-- wejdz na lokacje i uzyj gmcp
		if gmcpID ~= 0 then --
			if self.drawing and gmcpID ~= self.lastKnownID then
				if self.draw then

					if self.draw.special then

						-- DRAW SPECIAL EXIT NEW ROOM
						roomID = self:generateRoom(self.draw.from, gmcpID, self.draw.dir, nil)
						-- dodaj wyjscie specjalne
						self:addSpecialExit(self.draw.from, roomID, self.draw.command)
						self:addCustomLine(self.draw.from, roomID, self.draw.command)
						self:removeStub(self.draw.from, self.draw.dir)
						
					elseif self.draw.new then

						--  DRAW NORMAL NEW ROOM
						if self.draw.from ~= gmcpID then
							roomID = self:generateRoom(self.draw.from, gmcpID, self.draw.dir, self.draw.command)
							if roomID then
								if self.draw.command == "up" or self.draw.command == "down" then
									local reverse = {
										["up"] = "down",
										["down"] = "up",
									}
									-- dodaj linie
									self:addCustomLine(self.draw.from, roomID, self.draw.command)
									-- polacz w druga strone - w przypadku up/down zawsze wystepuje polaczenie obustronne
									self:connectRooms(roomID, self.draw.from, reverse[self.draw.command])

									-- doors killers start - koniecznie po connect - bo setdoor nie widzi wyjscia spowrotem
									if self.dir2door[self.draw.command] then
										setDoor(self.draw.from, self.draw.command, 2)
										setDoor(roomID, reverse[self.draw.command], 2)
									end
									-- doors killers end

								elseif self.mode == 2 then
									-- ustaw polaczenie obustronne dla traktow
									self:connectRooms(roomID, self.draw.from, self.shortMirror[self.draw.dir])
								end
							end

						end

					end
					-- doors killers start
					local command = self.draw.command
					if not command then
						command = self.draw.dir
					end
					if self.dir2door[command] then
						if command == "u" then command = "up" end
						if command == "d" then command = "down" end
						setDoor(self.draw.from, command, 2)
					end
					if mapper.color2sector[gmcp.Room.Info.sector] then
						setRoomEnv(gmcpID, mapper.color2sector[gmcp.Room.Info.sector])
					end
					-- doors killers end
					self.draw = nil
				end
				self:centerGMCP()
			end
			self.lastKnownID = gmcpID
			self:roomBinded()
			if self.gmcpNextLocation then
				self:centerGMCP()
				self.gmcpNextLocation = nil
			end
			self:helper()
		else
			self.lastKnownID = self.room.id
			-- wygeneruj room bez gmcp
			if self.drawing and self.draw and self.draw.new and self.mode == 3 then
				local to = createRoomID(self.nogmcp)
				self:generateRoom(self.draw.from, to, self.draw.dir, self.draw.dir)
				setRoomEnv(to, 262) -- TODO SKOMENTOWAC TO
				self:center(to)
			end
		end
	end
end

mapper.events["roomLoaded"] = registerAnonymousEventHandler("gmcp.Room", mapper:roomLoaded())
