fort = fort or {}
fort.path = {"e", "n", "s", "s", "n", "e", "n", "s", "s"} 

function fort:start()
  exp:start(self.path)
end
