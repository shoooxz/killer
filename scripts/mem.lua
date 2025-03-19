mem = mem or {}
mem.list = {}

function mem:show()
  for i=1, #gmcp.Char.MemSpell do
    display(gmcp.Char.MemSpell[i])
  end
  display(mem:canCast("decay"))
end

function mem:canCast(name)
  for i=1, #gmcp.Char.MemSpell do
    if gmcp.Char.MemSpell[i].name == name then
      if gmcp.Char.MemSpell[i].memed then
        return true
      end
    end
  end
  return false
end
