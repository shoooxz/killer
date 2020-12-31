miner = miner or {}
miner.active = false
miner.switch = true
miner.dir = nil
miner.toolUp = {
    "oskardzika",
	"czekanika",
}
miner.toolDown = {
    "oskardzik",
	"czekanik",
}

-- Krwistoczerwony rubin, przezroczysty diament,  mroczny opal

function miner:toolExists(id)
	return (self.toolUp[id] and self.toolDown[id])
end

function miner:num5()
	return function()
		if self.active then
			if self.switch then
				send("opusc kilof;"..inventory:weaponGet(true))
				self.switch = false
			else
				send(inventory:weaponPut(true).."dobadz kilofa")
				self.switch = true
			end
		end
	end
end

function miner:pick()
	send("sp")
	send("opusc "..self.toolDown[profile:get("miner")]..";dobadz drugiego kilofa;napelnij lampe olejem")
	send("kuj "..self.dir.." sciane")
end

function miner:slash()
	return function()
		if self.active then
			send("wez mineraly;odloz pomaranczowe kamienie;odloz granity;odloz popielate kamienie;odloz szare kamienie")
		end
	end
end

function miner:move()
	return function(e, dir)
		if self.active then
			self.dir = dir
			local s = profile:get("miner")
			if s == 1 or s == 2 then
				send("opusc kilof;dobadz "..self.toolUp[s])
				send("zbadaj "..dir.." sciane")
			else
				--send("zbliz krysztal do "..dir.." sciany")
			end
		end
	end
end

scripts.events["minerModMove"] = registerAnonymousEventHandler("modMove", miner:move())
scripts.events["minerNum5"] = registerAnonymousEventHandler("num5", miner:num5())
scripts.events["minerSlash"] = registerAnonymousEventHandler("slash", miner:slash())
