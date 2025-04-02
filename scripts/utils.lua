utils = utils or {}

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
            concat = concat .. v .. glue
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

function utils:arrFirstInSecond(arr1, arr2)

end
