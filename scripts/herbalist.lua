herbalist = herbalist or {}
herbalist.active = false

function herbalist:num5()
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

function herbalist:pick()
  send("get all")
	send("min")
end

function herbalist:slash()
	return function()
		if self.active then
			-- slash key
		end
	end
end

function herbalist:move()
	return function(e, dir)
		if self.active then
			self.dir = dir
      echo(dir)
      -- mode move to Ctrl + kierunek 
		end
	end
end

--scripts.events["herbalistModMove"] = registerAnonymousEventHandler("modMove", herbalist:move())
scripts.events["herbalistNum5"] = registerAnonymousEventHandler("num5", herbalist:num5())
scripts.events["herbalistSlash"] = registerAnonymousEventHandler("slash", herbalist:slash())
