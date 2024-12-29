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
function keybind:water(from)
	if self.show then
		echo("sraka")
		self.triggerCommand = "drink "..from
		printer:bind(self.conf.keybindWater.modifier, self.conf.keybindWater.key, "napij sie")
		self.show = false
		send("drink "..from..";drink "..from..";drink "..from)
		send("fill "..profile:get("water"))
	end
end

-- GATE BIND
function keybind:gate(str)
	local gate2command = {
		["Wschodnia brama jest zamknieta."] = "zastukaj we wschodnie wrota",
	}
	local command = "pociagnij;zapukaj;zadzwon"
	if gate2command[str] then
		command = gate2command[str]
	end
	self.gateCommand = command
	mapper:walkerInterrupted(command)
	printer:bind(self.conf.keybindGate.modifier, self.conf.keybindGate.key, command)
end
