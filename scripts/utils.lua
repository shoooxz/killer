utils = utils or {}

function utils:partsMatch(input, full)
  local input_parts = input:lower():split(" ")
  local full_parts = full:lower():split(" ")
  if #input_parts < #full_parts then
    return false
  end
  for i, part in ipairs(input_parts) do
    if not full_parts[i] then return false end
    if not full_parts[i]:find("^" .. part) then
      return false
    end
  end
  return true
end

function utils:deleteDir(dir)
    for file in lfs.dir(dir) do
        local file_path = dir .. '/' .. file
        if file ~= "." and file ~= ".." then
            if lfs.attributes(file_path, 'mode') == 'file' then
                os.remove(file_path)
            elseif lfs.attributes(file_path, 'mode') == 'directory' then
                self:deleteDir(file_path)
            end
        end
    end
    lfs.rmdir(dir)
end

function utils:abbr(name)
  local words = {}
  -- Rozdziel string na słowa
  for word in string.gmatch(name, "%S+") do
      table.insert(words, word)
  end
  -- Dwa lub więcej słów: użyj pierwszych liter
  if #words >= 2 then
      local initials = ""
      for _, word in ipairs(words) do
          initials = initials .. string.upper(string.sub(word, 1, 1))
      end
      return initials
  else
      -- Jedno słowo: zwróć do 3 pierwszych liter jako wielkie litery
      local singleWord = words[1]
      return string.upper(string.sub(singleWord, 1, 3))
  end
end

function utils:ellipsis(s, maxLen)
    if #s <= maxLen then
        return s
    else
        return string.sub(s, 1, maxLen)
    end
end

function utils:fillGaps(t, default_value)
  -- Znajdź największy indeks numeryczny
  local max_index = 0
  for k in pairs(t) do
    if type(k) == "number" and k > max_index then
      max_index = k
    end
  end

  -- Uzupełnij brakujące indeksy
  for i = 1, max_index do
    if t[i] == nil then
      t[i] = default_value
    end
  end

  return t
end

function utils:diceToAverage(format)
    -- Dopasowanie do wzorca "XdY", np. "2d5"
    local ilosc, sciany = string.match(format, "(%d+)d(%d+)")

    -- Konwersja na liczby
    ilosc = tonumber(ilosc)
    sciany = tonumber(sciany)

    -- Obliczenie średniej: każda kostka ma średnią (1 + sciany) / 2
    local srednia = ilosc * (1 + sciany) / 2

    -- Zaokrąglenie do najbliższej liczby całkowitej
    return math.floor(srednia + 0.5)
end

function utils:getRoomPeople()
  local out = {}
  for i, p in pairs(gmcp.Room.People) do
    table.insert(out, p.name)
  end
  return out
end

function utils:rArray(tablica)
    local odwrocona = {}
    for i = #tablica, 1, -1 do
        table.insert(odwrocona, tablica[i])
    end
    return odwrocona
end

function utils:arrayMerge(tab1, tab2)
    local wynik = {}
    for i = 1, #tab1 do
        table.insert(wynik, tab1[i])
    end
    for i = 1, #tab2 do
        table.insert(wynik, tab2[i])
    end
    return wynik
end

function utils:arrayKeyExists(key, arr)
    for k,v in pairs(arr) do
      if k == key then return true end
    end
    return false
end

function utils:doubleDigit(n)
  return string.format("%02d", n)
end


function utils:arrayRemoveByValue(val, arr)
    for i=1, #arr do
      if arr[i] == val then
        table.remove(arr, i)
        return true
      end
    end
    return false
end

function utils:mod(a, b)
    return a - (math.floor(a/b)*b)
end

function utils:setTimeEvent(sec)
    return math.floor(getEpoch())+sec
end

function utils:isTimeEventHappend(event)
    return event <= math.floor(getEpoch())
end


function utils:readJson(path)
  path = getMudletHomeDir() .. '/killer/'..path
  local file = io.open(path, "r")
  if not file then return nil end
  local content = file:read "*a"
  file:close()
  return yajl.to_value(content)
end

function utils:trim(s)
    return s:gsub("^%s+", ""):gsub("%s+$", "")
end

function utils:inArray2(val, arr)
    for i=1, #arr do
      if arr[i] == val then return true end
    end
    return false
end

function utils:inArray(val, tab)
    for _, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function utils:truncate(str, limit)
    local len = string.len(str)
    if len > limit then
        return string.sub(str, 1, limit).."..."
    end
    return str
end

function utils:objectLength(obj)
  local count = 0
  for _ in pairs(obj) do count = count + 1 end
  return count
end

function utils:ucfirst(str)
    return (str:gsub("^%l", string.upper))
end

function utils:split(s, delimiter)
    result = {};
    for match in (s..delimiter):gmatch("(.-)"..delimiter) do
        table.insert(result, match);
    end
    return result;
end

-- split z `,` `i`
function utils:splitcommai(str)
    local s = self:split(str, ", ")
    local last = nil
    if string.find(s[#s], " i ") then
        last = self:split(s[#s], " i ")
        table.remove(s)
        table.insert(s, last[1])
        table.insert(s, last[2])
    end
    return s
end

function utils:arrayKeys(tab)
    local keyset={}
    local n=0
    for k,v in pairs(tab) do
        n=n+1
        keyset[n]=k
    end
    return keyset
end

function utils:arrayDiff(a, b)
    local aa = {}
    for k,v in pairs(a) do aa[v]=true end
    for k,v in pairs(b) do aa[v]=nil end
    local ret = {}
    local n = 0
    for k,v in pairs(a) do
        if aa[v] then n=n+1 ret[n]=v end
    end
    return ret
end

function utils:ltrim(str, characters_to_remove)
    local chars_to_be_removed
    if nil == characters_to_remove then
        chars_to_be_removed = " \n\t"
    else
        chars_to_be_removed = characters_to_remove
    end
    local characters = {}
    for i = 1, #chars_to_be_removed do
        local ch = string.sub(chars_to_be_removed, i, i)
        characters[string.byte(ch)] = true
    end
    local result = ""
    local done = false
    for i = 1,#str do
        local ch = string.sub(str, i, i)
        if characters[string.byte(ch)] and not done then
        else
            done = true
            result = result .. ch
        end
    end
    return result
end

function utils:rtrim(str, characters_to_remove)
    local reversed_string = string.reverse(str)
    local trimmed_reversed_string = self:ltrim(reversed_string, characters_to_remove)
    local result = string.reverse(trimmed_reversed_string)
    return result
end

-- polaczenia tabeli bez getN
function utils:concat(arr, glue)
    local concat = ""
    if type(arr) == "table" then
        for k, v in pairs(arr) do
            if type(v) ~= "table" then
              concat = concat .. v .. glue
            end
        end
        return utils:rtrim(concat, glue)
    else
        return arr
    end
end

utils.plremove = {
  ['ą'] = 'a',
  ['ć'] = 'c',
  ['ę'] = 'e',
  ['ł'] = 'l',
  ['ń'] = 'n',
  ['ó'] = 'o',
  ['ś'] = 's',
  ['ź'] = 'z',
  ['ż'] = 'z'
};

function utils:replacePolish(text)
  if text then
    for k,v in pairs(self.plremove) do
      text = text:gsub(k,v);
    end
    return text;
  end
end

function utils:uniqueTable(Table)
    local EndTable = {}
    for i, v in pairs(Table) do
        if not table.find(EndTable, v) then
            table.insert(EndTable, v)
        end
    end
    return EndTable
end

function utils:shallowCopy(t)
  local t2 = {}
  for k,v in pairs(t) do
    t2[k] = v
  end
  return t2
end

function utils:rgbToHex(r,g,b)
  rgb = {r, g, b}
	local hexadecimal = '0X'

	for key, value in pairs(rgb) do
		local hex = ''

		while(value > 0)do
			local index = math.fmod(value, 16) + 1
			value = math.floor(value / 16)
			hex = string.sub('0123456789ABCDEF', index, index) .. hex
		end

		if(string.len(hex) == 0)then
			hex = '00'

		elseif(string.len(hex) == 1)then
			hex = '0' .. hex
		end

		hexadecimal = hexadecimal .. hex
	end

	return hexadecimal
end

function utils:replace(from, to)
  selectString(from, 1)
  replace(to)
end

function utils:endsWith(str, suffix)
    return string.sub(str, -#suffix) == suffix
end

function utils:startsWith(str, prefix)
    return string.sub(str, 1, #prefix) == prefix
end

function utils:copper2mithryl(miedz)
    local miedzi_na_zloto = 15 * 60
    local miedzi_na_mithril = 12 * miedzi_na_zloto
    local mithril = miedz / miedzi_na_mithril
    -- Zaokrąglamy do 2 miejsc po przecinku
    local wynik = string.format("%.2f", mithril)
    -- Zamieniamy kropkę na przecinek
    wynik = wynik:gsub("%.", ",")
    -- Obcinamy niepotrzebne zera po przecinku
    wynik = wynik:gsub(",(%d-)0+$", ",%1")
    -- Jeśli zostało tylko przecinek (np. 1, → 1)
    wynik = wynik:gsub(",$", "")
    return wynik
end
