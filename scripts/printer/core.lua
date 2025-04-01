printer = printer or {}
printer.length = 80
printer.titleColor = "green"
printer.titleMargin = 4
printer.borderColor = "white"
printer.tabLength = 1
printer.commandColor = "orange"
printer.descriptionColor = "white"
printer.textColor = "white"
printer.sectionColor = "yellow"
printer.errorColor = "red"
printer.infoColor = "DeepSkyBlue"
printer.successColor = "green"
printer.keyColor = "red"
printer.key2short = {
	["Control"] = "CTRL",
	["Alt"] = "ALT",
	["Shift"] = "SHIFT",
	["Keypad"] = "Keypad",
	["GroupSwitch"] = "GroupSwitch",
	["Equal"] = "=",
	["Plus"] = "+",
	["Minus"] = "-",
	["Asterisk"] = "*",
	["Ampersand"] = "&",
	["AsciiCircum"] = "^",
	["AsciiTilde"] = "~",
	["BracketLeft"] = "[",
	["BracketRight"] = "]",
	["BraceLeft"] = "{",
	["BraceRight"] = "}",
	["ParenLeft"] = "(",
	["ParenRight"] = ")",
	["QuoteLeft"] = "`",
	["QuoteDbl"] = "\"",
	["Apostrophe"] = "'",
	["Less"] = "<",
	["Greater"] = ">",
	["Slash"] = "/",
	["Backslash"] = "\\",
	["Underscore"] = "_",
	["Comma"] = ",",
	["Period"] = ".",
	["Colon"] = ":",
	["Semicolon"] = ";",
	["Bar"] = "|",
}
function printer:title(str, nospace, nomargin)
	local len = string.len(str)
	local left = string.rep("-", self.length-len-4-self.titleMargin) -- -4 dwie spacje i nawias
	local right = string.rep("-", self.titleMargin)
	local margin = "\n"
	if nomargin then margin = "" end
	cecho(margin.."<"..self.borderColor..">+"..left.."( <"..self.titleColor..">"..str.." <"..self.borderColor..">)"..right.."+\n")
	if not nospace then self:space() end
end

function wrap(text, charLimit)
    local lines = {}
    local line = ""

    -- Lista krótkich słów, które nie powinny pozostawać na końcu linii
    local avoidOrphans = { "i", "a", "o", "u", "w", "z", "na", "do", "po", "od", "za", "bez", "przy", "pod" }

    -- Funkcja sprawdzająca, czy słowo to "sierotka"
    local function isOrphan(word)
        for _, orphan in ipairs(avoidOrphans) do
            if word == orphan then
                return true
            end
        end
        return false
    end

    -- Użycie gsub do iteracji przez słowa w tekście
    text:gsub("%S+", function(word)
        if #line + #word + 1 > charLimit then
            -- Sprawdzenie, czy ostatnie słowo w linii jest "sierotką"
            local lastWord = line:match("(%S+)$")
            if lastWord and isOrphan(lastWord) then
                -- Przenosimy sierotkę do nowej linii
                line = line:sub(1, -(#lastWord + 2)) -- Usunięcie ostatniego słowa i spacji
                table.insert(lines, line)
                line = lastWord .. " " .. word  -- Nowa linia zaczyna się od sierotki i nowego słowa
            else
                table.insert(lines, line)
                line = word  -- Nowa linia zaczyna się od bieżącego słowa
            end
        else
            if #line > 0 then
                line = line .. " " .. word
            else
                line = word
            end
        end
    end)

    -- Dodanie ostatniej linii, jeśli coś w niej jest
    if #line > 0 then
        table.insert(lines, line)
    end

    return lines
end


function printer:text(text, color)
	local wrapped = wrap(text, 75)
	for i=1, #wrapped do
		printer:textLine(wrapped[i], color)
	end
end

function printer:textLine(line, color)
	color = color or "white"
	local len = self.length-string.len(line)-self.tabLength  -- 2 : i spacja
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..self.textColor..">".."<"..color..">"..line..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:one(left, right, nomargin)
	local len = self.length-string.len(left)-string.len(right)-self.tabLength-2  -- 2 : i spacja
	self:top(true)
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..self.sectionColor..">"..left..": "..
		"<"..self.textColor..">"..right..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
	self:bottom(true, nomargin)
end

function printer:bind(modifier, key, right)
	local left = self.key2short[key]
	if not left then
		left = key
	end
	if modifier[1] then
		left = self.key2short[modifier[1]].." + "..left
	end
	right = utils:truncate(right, 50)
	local len = self.length-string.len(left)-string.len(right)-self.tabLength-17  -- 17 Bind: Wcisnij ``
	self:top(true)
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..self.sectionColor..">BIND: "..
		"<"..self.textColor..">Wcisnij "..
		"<"..self.keyColor..">"..left.." "..
		"<"..self.textColor..">`"..right.."`"..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
	self:bottom(true)
end

function printer:section(name)
	local len = self.length-string.len(name)-self.tabLength
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..self.sectionColor..">"..name..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
	self:space()
end

function printer:command(name, desc)
	local len = self.length-string.len(name)-string.len(desc)-3-self.tabLength -- -3  2 spacje i myslnik
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..self.commandColor..">"..name..
		"<"..self.descriptionColor.."> - "..desc..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:tableRow(size, header, arr, link, nohr)
	local len = 0
	for i in pairs(size) do
		len = len + size[i]+2 -- kreska + spacja odzielajace kazdy cell
	end

	local fill = self.length-len+1
	local out = ""
	if next(header) then
		table.insert(arr, 1, header)
	end

	local finish = false

	for row in pairs(arr) do
		local color = self.textColor
		if row == 1 then
			color = self.commandColor
		end
		for index, value in pairs(arr[row]) do
			--out = out.."<"..self.borderColor..">|"..string.rep(" ", 1)

			-- skomplikowany uklad
			if type(value) == "table" then
				if not value[1] then
					printer:text(value[2], "grey")
					if value[3] then
						printer:text(value[3], "grey")
					end
					if row < #arr then
						--out = out..self:getHr()
							cecho(self:getHr())
					end
					finish = true
				else
					finish = false
					cecho("<"..self.borderColor..">|"..string.rep(" ", 1))
					-- if array color it
					local filler = string.rep(" ", size[index]-string.len(value[2]))
					if link then
						cechoLink("<"..value[1]..">"..value[2], value[3], "", true)
						cecho(filler)
					else
						cecho("<"..self.borderColor..">|"..string.rep(" ", 1))
						--out = out.."<"..value[1]..">"..value[2]..filler
						cecho("<"..value[1]..">"..value[2]..filler)
					end
				end
			else
					-- normalny text
					local filler = string.rep(" ", size[index]-string.len(value))
					--out = out.."<"..color..">"..value..filler
					cecho("<"..color..">"..value..filler)
			end
		end

		if not finish then
			--out = out..string.rep(" ", fill).."<"..self.borderColor..">|\n"
			cecho(string.rep(" ", fill).."<"..self.borderColor..">|\n")

			if row < #arr then
				--out = out..self:getHr()
				if not nohr then
					cecho(self:getHr())
				end
			end
		end

	end
	--cecho(out)
end

function printer:desc(name, desc)
	local len = self.length-string.len(name)-string.len(desc)-3-self.tabLength*2 -- -3  2 spacje i myslnik
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength*2)..
		"<"..self.commandColor..">"..name..
		"<"..self.descriptionColor.."> - "..desc..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:info(desc)
	local len = self.length-string.len(desc)-self.tabLength*2
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength*2)..
		"<"..self.infoColor..">"..desc..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:space()
 	cecho("<"..self.borderColor..">|"..string.rep(" ", self.length).."|\n")
end

function printer:top(nospace)
	cecho("\n<"..self.borderColor..">+"..string.rep("-", self.length).."+\n")
	if not nospace then self:space() end
end

function printer:bottom(nospace, nomargin)
	local margin = "\n\n"
	if not nospace then self:space() end
	if nomargin then margin = "" end
	cecho("<"..self.borderColor..">+"..string.rep("-", self.length).."+"..margin)
end

function printer:dumpArray(arr, firstColLength, header, color)
	if header then
		self:renderArrayRow(header[1], header[2], firstColLength, "orange")
		self:hr()
	end
	for k, v in pairs(arr) do
		self:renderArrayRow(v[1], v[2], firstColLength, color)
	end
end

function printer:dumpArrayLink(arr, header, color)
	if header then
		self:renderArrayRow(header, nil, nil, "orange")
		self:hr()
	end
	for k, v in ipairs(arr) do
		self:space()
		self:renderArrayRowLink(v, color)
	end
end

function printer:renderArrayRowLink(left, color)
	local textColor = self.textColor
	if color then
		textColor = color
	end
	if type(left) == "table" then
		label = left.label
	else
		label = left
	end
	local fillLeft = self.length-self.tabLength-1-string.len(label)
	cecho("<"..self.borderColor..">|"..string.rep(" ", self.tabLength))
	if type(left) == "table" then
		cechoLink("<"..textColor.."> "..label, left.command, left.tooltip, true)
	else
		cecho("<grey> "..label)
	end
	cecho(string.rep(" ", fillLeft).."<"..self.borderColor..">|\n")
end

function printer:renderArrayRow(left, right, firstColLength, color)
	local textColor = self.textColor
	if color then
		textColor = color
	end
	if type(right) == "table" then
		right = table.concat(right, ", ")
	end
	-- w przypadku tylko lewej strony
	local fillLeft = self.length-self.tabLength-1-string.len(left) -- -1 for 1 space
	local rightSide = ""
	-- w przypadku lewej i prawej strony
	if right then
		local fillRight = self.length-self.tabLength-1-firstColLength-string.len(right) -- -1 for | przedzialek
		fillLeft = firstColLength-self.tabLength-1-string.len(left) -- -1 for 1 space
		rightSide =
			"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
			"<"..textColor..">"..right..string.rep(" ", fillRight)
	end
	local leftSide =
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..textColor.."> "..left..string.rep(" ", fillLeft)

	cecho(
		leftSide..rightSide.."<"..self.borderColor..">|\n"
	)
end

function printer:hr()
	local len = self.length-self.tabLength*2
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..string.rep("-", len)..string.rep(" ", self.tabLength)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:getHr()
	local len = self.length-self.tabLength*2
	return
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..string.rep("-", len)..string.rep(" ", self.tabLength)..
		"<"..self.borderColor..">|\n"
end

function printer:errorLine(msg)
 	self:line(msg, self.errorColor)
end

function printer:successLine(msg)
 	self:line(msg, self.successColor)
end

function printer:line(msg, color)
	local len = self.length-string.len(msg)-self.tabLength
	if not color then
		color = self.textColor
	end
	cecho(
		"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
		"<"..color..">"..msg..string.rep(" ", len)..
		"<"..self.borderColor..">|\n"
	)
end

function printer:progress(msg, val, max)
	local total = string.rep(".", max-val)
	local progress = string.rep("#", val)
 	self:one(msg, "["..progress..total.."]", true)
end

function printer:spellTeacher(list)
	local class = {
		"mag",
		"kleryk",
		"druid",
		"nomad",
		"paladyn",
	}
	for i, v in pairs(list) do
		local msg = v.mob

		local len = self.length-string.len(msg)-self.tabLength
		cecho(
			"<"..self.borderColor..">|"..string.rep(" ", self.tabLength)..
			"<white>"..msg..string.rep(" ", len)..
			"<"..self.borderColor..">|\n"
		)
	end
end
