gag = gag or {}
gag.dt = {
	["boska moc"] = "HOLY",
	["szokujace ugryzienie"] = "LIGHTNING",
	["mrozace ugryzienie"] = "COLD",
	["wyssanie umyslu"] = "MENTAL",
	["kwasowe ugryzienie"] = "ACID",
	["zrace uderzenie"] = "ACID",
	["miazdzace walniecie"] = "BASH",
	["plomienne ugryzienie"] = "FIRE",
	["wyssanie zycia"] = "NEGATIVE",
	["zamaszyste ciecie"] = "SLASH",
	["uderzenie tarcza"] = "BASH",
	["precyzyjne ciecie"] = "SLASH",
	["uderzenie"] = "BASH",
	["ciecie"] = "SLASH",
	["pchniecie"] = "PIERCE",
	["smagniecie"] = "SLASH",
	["szczypniecie"] = "SLASH",
	["podmuch"] = "BASH",
	["walniecie"] = "BASH",
	["ugryzienie"] = "PIERCE",
	["uklucie"] = "PIERCE",
	["ssanie"] = "BASH",
	["szarza"] = "BASH",
	["klepniecie"] = "BASH",
	["magia"] = "ENERGY",
	["drapniecie"] = "SLASH",
	["dziobniecie"] = "PIERCE",
	["siekniecie"] = "SLASH",
	["uzadlenie"] = "PIERCE",
	["dzgniecie"] = "PIERCE",
	["wstrzasniecie"] = "LIGHTNING",
	["lupniecie"] = "BASH",
	["plomien"] = "FIRE",
	["chlod"] = "COLD",
	["ukaszenie"] = "PIERCE",
}
--[[
uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|miazdzace walniecie|ugryzienie|uklucie|ssanie|zrace uderzenie|szarza|klepniecie|wyssanie umyslu|magia|boska moc|drapniecie|dziobniecie|siekniecie|uzadlenie|szokujace ugryzienie|plomienne ugryzienie|mrozace ugryzienie|kwasowe ugryzienie|wyssanie zycia|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie|precyzyjne ciecie|zamaszyste ciecie|uderzenie tarcza
^.*(boska moc|szokujace ugryzienie|mrozace ugryzienie|wyssanie umyslu|kwasowe ugryzienie|zrace uderzenie|miazdzace walniecie|plomienne ugryzienie|wyssanie zycia|zamaszyste ciecie|uderzenie tarcza|precyzyjne ciecie|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie).*$
^Twoje (boska|szokujace|mrozace|wyssanie|kwasowe|zrace|miazdzace|plomienne|zamaszyste|uderzenie|precyzyjne|ugryzienie)?(moc|umyslu|zycia|tarcza|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie).*$

dziala jakos:
(?i)(Twoje )?(boska moc|szokujace ugryzienie|mrozace ugryzienie|wyssanie umyslu|kwasowe ugryzienie|zrace uderzenie|miazdzace walniecie|plomienne ugryzienie|wyssanie zycia|zamaszyste ciecie|uderzenie tarcza|precyzyjne ciecie|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie)(.*)
]]--

-- Klasa pancerza: 9 klujace, 9 obuchowe, 9 ciecie   miazdzace walniecie (BASH) drzewca muska cie.BASH

function gag:hit(me, type, rest)
	local out = ""
	if me == "Twoje " then
		out = out.."<gold>JA<reset> "
	end
	local type = string.lower(type)
	local dt = gag.dt[type]
	if  utils:endsWith(rest, " cie.") or  utils:endsWith(rest, " cie!") then
		out = out.."<red>OBRAZENIA<reset> "
	end

	rest = gag:damage(rest)


	out = out..type.." ("..dt..")"..rest
	creplaceLine(out)

end


function gag:damage(s)

	if string.find(s, "siniaczy") then
		return  string.gsub(s, "siniaczy", gag:color("siniaczy", 2, 1))
	elseif string.find(s, "muska") then
		return  string.gsub(s, "muska", gag:color("muska", 6, 1))
	elseif string.find(s, "ledwie rani") then
		return  string.gsub(s, "ledwie rani", gag:color("ledwie rani", 10, 1))
	elseif string.find(s, "lekko rani") then
		return  string.gsub(s, "lekko rani", gag:color("lekko rani", 14, 1))
	elseif string.find(s, "mocno rani") then
		return  string.gsub(s, "mocno rani", gag:color("mocno rani", 22, 1))
	elseif string.find(s, "dotkliwie rani") then
		return  string.gsub(s, "dotkliwie rani", gag:color("dotkliwie rani", 26, 1))
	elseif string.find(s, "powaznie rani") then
		return  string.gsub(s, "powaznie rani", gag:color("powaznie rani", 30, 1))
	elseif string.find(s, "rani") then
		return  string.gsub(s, "rani", gag:color("rani", 18, 1))
	elseif string.find(s, "masakruje") then
		return  string.gsub(s, "masakruje", gag:color("masakruje", 34, 2))
	elseif string.find(s, "rozpruwa") then
		return  string.gsub(s, "rozpruwa", gag:color("rozpruwa", 38, 2))
	elseif string.find(s, "dewastuje") then
		return  string.gsub(s, "dewastuje", gag:color("dewastuje", 44, 2))
	elseif string.find(s, "grzmoci") then
		return  string.gsub(s, "grzmoci", gag:color("grzmoci", 50, 2))
	elseif string.find(s, "niszczy") then
		return  string.gsub(s, "niszczy", gag:color("niszczy", 55, 2))
	elseif string.find(s, "NISZCZY") then
		return  string.gsub(s, "NISZCZY", gag:color("NISZCZY", 60, 3))
	elseif string.find(s, "DRUZGOCZE") then
		return  string.gsub(s, "DRUZGOCZE", gag:color("DRUZGOCZE", 67, 3))
	elseif string.find(s, "ROZPRUWA") then
		return  string.gsub(s, "ROZPRUWA", gag:color("ROZPRUWA", 75, 3))
	elseif string.find(s, "ROZRYWA") then
		return  string.gsub(s, "ROZRYWA", gag:color("ROZRYWA", 84, 3))
	elseif string.find(s, "ROZBEBESZA") then
		return  string.gsub(s, "ROZBEBESZA", gag:color("ROZBEBESZA", 100, 3))
	elseif string.find(s, "DEKAPITUJE") then
		return  string.gsub(s, "DEKAPITUJE", gag:color("DEKAPITUJE", 115, 3))
	elseif string.find(s, "EKSTYRPUJE") then
		return  string.gsub(s, "EKSTYRPUJE", gag:color("EKSTYRPUJE", 130, 3))
	elseif string.find(s, "ANIHILUJE") then
		return  string.gsub(s, "ANIHILUJE", gag:color("ANIHILUJE", 145, 3))
	elseif string.find(s, "USMIERCA") then
		return  string.gsub(s, "USMIERCA", gag:color("USMIERCA", 200, 3))
	elseif string.find(s, "UNICESTWIA") then
		return  string.gsub(s, "UNICESTWIA", gag:color("UNICESTWIA", 250, 3))
	end

end

function gag:color(s, dmg, threat)
	local col = {
		"<green>",
		"<yellow>",
		"<red>"
	}
	return col[threat]..s.." <reset>("..col[threat]..dmg.."<reset>)"
end
