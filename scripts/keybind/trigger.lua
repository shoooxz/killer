-- TRIGER BIND
function keybind:shipEnter()
	scripts:beep()
	self.triggerCommand = inventory:moneyGet(true)..";kup bilet;wejdz na statek;wejdz na tratwe"
	self:triggerPrint()
end

function keybind:shipLeave()
	scripts:beep()
	self.triggerCommand = "zejdz ze statku"
	mapper.gmcpNextLocation = true
	self:triggerPrint()
end

-- ROOM BIND
function keybind:room(command)
	if self.show then
		self.roomCommand = command
		printer:bind(self.conf.keybindRoom.modifier, self.conf.keybindRoom.key, command)
		self.show = false
	end
end

-- WATER BIND
function keybind:getWaterCommand(from)
	return "drink "..from..";drink "..from..";drink "..from..";fill "..profile:get("water")
end

function keybind:water(from)
	if self.show then
		self.triggerCommand = from
		printer:bind(self.conf.keybindWater.modifier, self.conf.keybindWater.key, "napij sie")
		self.show = false
	end
end

-- GATE BIND
function keybind:gate(str)
	local command = getRoomUserData(mapper.room.id, "gate")
	self.gateCommand = command
	exp:interrupted(command)
	printer:bind(self.conf.keybindGate.modifier, self.conf.keybindGate.key, command)
end
