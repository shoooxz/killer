scripts = scripts or {}
scripts.events = scripts.events or {}

function scripts:init()
	if mudletOlderThan(4, 8) then
		printer:error("Stara wersja mudleta",
			{
			  "Zaktualizuj Mudlet!",
			  "Wymagana wersja Mudleta 4.8+"
			}
		)
	end
	self:unbindEvents()
	settings:init()
	footer:init()
	top:init()
	mode:init()
	state:init()
	base:init()
	setMainWindowSize(settings:get("mainWindowWidth"), settings:get("mainWindowHeight"))

end

--komenda /start
function scripts:start(index)
	local arr = {
		"config hints",
		"config gmcp",
		"config group prompt",
		"config show position",
		"config memtime",
		"config num_skill",
		"config show_condition",
		"config exp num",
		"config codepage nopol",
		"config spellcolour styl3",
		"prompt  [%h/%Hhp %xxp %v/%Vmv] %m %y [%r] %e"
	}
	if arr[index] then
		greeting_timer_id = tempTimer(2, function()
			send(arr[index])
			self:start(index+1)
		end)
  end
end

function scripts:loaded()
	send('opcje szerokosc 0', false)
	send('opcje sortowanie +', false)
	mapper:centerGMCP()
end

function scripts:prefix(str, color)
	if not color then
		color = "white"
	end
	selectCurrentLine()
    str = str.." "
    prefix(str)
    selectString(str, 1)
    fg(color)
    resetFormat()
end


function scripts:detectBody(arr)
	for i=1, #arr do
		if string.find(self.dead.name, arr[i]) then
			return true
		end
	end
	return false
end

function scripts:onEnemyKilled(str)
	self.dead = {}
	self.dead.name = str:lower()
	self.dead.loot = "cialo"
	self.dead.gem = false
	self.dead.gold = false
	who = str:lower()
	if self:detectBody({"keton", "drzewiec"}) then
		self.dead.loot = "drzewo"
	elseif self:detectBody({"szkielet"}) then
		self.dead.loot = "kupka"
		self.dead.gem = true
		self.dead.gold = true
	elseif self:detectBody({"yugoloth", "troll", "gigant", "goblin", "ork", "krzykacz", "yeti", "orenur"})  then
		self.dead.loot = "cialo"
		self.dead.gem = true
	elseif self:detectBody({"istota", "elemental"}) then
		self.dead.loot = ""
		self.dead.gem = true
	end
	if self.dead.gem then
		send("get all.klej "..self.dead.loot)
	end
	if self.dead.gold then
		send("get mon "..self.dead.loot)
	end
	if self.dead.loot == "" then
		send("look")
	else
		send("exam "..self.dead.loot)
	end
	raiseEvent("onEnemyKilled", self.dead)
end

function scripts:beep()
	playSoundFile(getMudletHomeDir().. [[/killer/beep.wav]])
end

function scripts:unbindEvents()
	for name, id in pairs(self.events) do
		if id then
			killAnonymousEventHandler(id)
		end
	end
end

scripts:init()

scripts.count2int = {
    ["jednej"] = 1,
    ["dwoch"] = 2,
    ["trzech"] = 3,
    ["czterech"] = 4,
    ["pieciu"] = 5,
    ["szesciu"] = 6,
    ["siedmiu"] = 7,
    ["osmiu"] = 8,
    ["dziewieciu"] = 9,
    ["dziesieciu"] = 10,
    ["jedenastu"] = 11,
    ["dwunastu"] = 12,
    ["trzynastu"] = 13,
    ["czternastu"] = 14,
    ["pietnastu"] = 15,
    ["szesnastu"] = 16,
    ["siedemnastu"] = 17,
    ["osiemnastu"] = 18,
    ["dziewietnastu"] = 19,
    ["dwudziestu"] = 20,
    ["dwudziestu jeden"] = 21,
    ["dwudziestu dwoch"] = 22,
    ["dwudziestu trzech"] = 23,
    ["dwudziestu czterech"] = 24,
    ["dwudziestu pieciu"] = 25,
    ["dwudziestu szesciu"] = 26,
    ["dwudziestu siedmiu"] = 27,
    ["dwudziestu osmiu"] = 28,
    ["dwudziestu dziewieciu"] = 29,
    ["trzydziestu"] = 30,
}
scripts.int2which = {
    [1] = "pierwszego",
    [2] = "drugiego",
    [3] = "trzeciego",
    [4] = "czwartego",
    [5] = "piatego",
    [6] = "szostego",
    [7] = "siodmego",
    [8] = "osmego",
    [9] = "dziewiatego",
    [10] = "dziesiatego",
    [11] = "jedenastego",
    [12] = "dwunastego",
    [13] = "trzynastego",
    [14] = "czternastego",
    [15] = "pietnastego",
    [16] = "szesnastego",
    [17] = "siedemnastego",
    [18] = "osiemnastego",
    [19] = "dziewietnastego",
    [20] = "dwudziestego",
    [21] = "dwudziestego pierwszego",
    [22] = "dwudziestego drugiego",
    [23] = "dwudziestego trzeciego",
    [24] = "dwudziestego czwartego",
    [25] = "dwudziestego piatego",
    [26] = "dwudziestego szostego",
    [27] = "dwudziestego siodmego",
    [28] = "dwudziestego osmego",
    [29] = "dwudziestego dziewiatego",
    [30] = "trzydziestego",
}
