miner = miner or {}
miner.active = false
miner.switch = true

function miner:num5()
	return function()
    send("min")
	end
end

function miner:pick()
  send("get all")
	send("min")
end

function miner:slash()
	return function()
    if self.active then
			if self.switch then
				send("remove kilof;"..inventory:weaponWield(true))
				self.switch = false
			else
				send(inventory:weaponRemove(true).."hold kilof")
        cecho("<orange>Gotowy do kucia!\n")
				self.switch = true
			end
		end
	end
end

function miner:move()
	return function(e, dir)
		if self.active then
			self.dir = dir
      echo(dir)
      -- mode move to Ctrl + kierunek
		end
	end
end

--scripts.events["minerModMove"] = registerAnonymousEventHandler("modMove", miner:move())
scripts.events["minerNum5"] = registerAnonymousEventHandler("num5", miner:num5())
scripts.events["minerSlash"] = registerAnonymousEventHandler("slash", miner:slash())
