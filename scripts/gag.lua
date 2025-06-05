gag = gag or {}
gag.me = "<gold>JA<reset> "
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
gag.spellTranslate = {
	{ " ",		" "		},
	{ "ar",		"abra"		},
	{ "au",		"kada"		},
	{ "bless",	"fido"		},
	{ "blind",	"nose"		},
	{ "bur",	"mosa"		},
	{ "cu",		"judi"		},
	{ "de",		"oculo"		},
	{ "en",		"unso"		},
	{ "light",	"dies"		},
	{ "lo",		"hi"		},
	{ "mor",	"zak"		},
	{ "move",	"sido"		},
	{ "ness",	"lacri"		},
	{ "ning",	"illa"		},
	{ "per",	"duda"		},
	{ "ra",		"gru"		},
	{ "fresh",	"ima"		},
	{ "re",		"candus"	},
	{ "son",	"sabru"		},
	{ "tect",	"infra"		},
	{ "tri",	"cula"		},
	{ "ven",	"nofo"		},
	{ "a", "a" }, { "b", "b" }, { "c", "q" }, { "d", "e" },
	{ "e", "z" }, { "f", "y" }, { "g", "o" }, { "h", "p" },
	{ "i", "u" }, { "j", "y" }, { "k", "t" }, { "l", "r" },
	{ "m", "w" }, { "n", "i" },  { "p", "s" },
	{ "q", "d" }, { "r", "f" }, { "s", "g" }, { "t", "h" },
	{ "u", "j" }, { "w", "x" }, { "x", "n" },
	{ "y", "l" }, { "z", "k" },
	{ "v", "z" },
	{ "o", "a" },
	{ "", "" },
}
--yuiozf ay oculoahp   finger of death
--saxzf xafe turr   power word kill
-- candusgugh xzasai resist wvapan
gag.spellTranslateFix = {
	["DIEINE FAEAR"] = "DIVINE FAVOUR",
	["DIEINE PAWER"] = "DIVINE POWER",
	["FLAME ARRAW"] = "FLAME ARROW",
	["EAMPIRIC TAUCH"] = "VAMPIRIC TOUCH",
	["SPRAY AF THARNS"] = "SPRAY OF THORNS",
	["SUMMAN ANIMAL"] = "SUMMON ANIMAL",
	["FARCE BALT"] = "FORCE BOLT",
	["MIRRAR IMAGE"] = "MIRROR IMAGE",
	["HALD UNDEAD"] = "HOLD UNDEAD",
	["CHAATIC SHACK"] = "CHAOTIC SHOCK",
	["DIEINE SHIELD"] = "DIVINE SHIELD",
	["AURA AF BATTLE LUST"] = "AURA OF BATTLE LUST",
	["STANE SKIN"] = "STONE SKIN",
	["HALD MANSTER"] = "HOLD MONSTER",
	["LAEA BALT"] = "LAVA BOLT",
	["THUNDER BALT"] = "THUNDER BOLT",
	["HARRID WILTING"] = "HORRID WILTING",
	["ARB AF ENTRAPY"] = "ORB OF ENTROPY",
	["RESIST PAISON"] = "RESIST POISON",
	["HALD PERSON"] = "HOLD PERSON",
	["IMMALATE"] = "IMMOLATE",
	["HALY WEAPANS"] = "HOLY WEAPONS",
	["DARKEISIAN"] = "DARKVISION",
	["NATURE ALLY IE"] = "NATURE ALLY IV",
	["PRATECTIAN EEIL"] = "PROTECTION EVIL",
	["PYRATECHNICS"] = "PYROTECHNICS",
	["NABLE LOAK"] = "NOBLE LOOK",
	["LOAP"] = "LOOP",
}

function gag:spellTransGetPart(str)
	if str then
		for i=1, #self.spellTranslate do
			local prefix = self.spellTranslate[i][2]
			if utils:startsWith(str, prefix) then
					return {self.spellTranslate[i][1], prefix}
			end
		end
	end
end

function gag:spellTrans(who, str)
	local out = ""
	-- jesli nie ma slowniku spelli
  if not base:isInSpellDictionary(str) then
		-- dekoduj spell
		local safe = 1
		while true do
			safe = safe + 1
			local part = self:spellTransGetPart(str)
			out = out..part[1]
			str = string.sub(str, #part[2]+1)
			--display(str)
			if str == "" then break end
			if safe == 30 then
				printer:error("gag", "Spell translate")
				break
			end
		end
		out = string.upper(out)
	else
		-- znasz juz ten spell
		out = string.upper(str)
	end
	deleteLine()
	echo("\n")
	if self.spellTranslateFix[out] then -- out
		cecho(who.." <tomato>"..self.spellTranslateFix[out])
	else
		cecho(who.." <tomato>"..out)
	end
	echo("\n")
end

--[[
uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|miazdzace walniecie|ugryzienie|uklucie|ssanie|zrace uderzenie|szarza|klepniecie|wyssanie umyslu|magia|boska moc|drapniecie|dziobniecie|siekniecie|uzadlenie|szokujace ugryzienie|plomienne ugryzienie|mrozace ugryzienie|kwasowe ugryzienie|wyssanie zycia|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie|precyzyjne ciecie|zamaszyste ciecie|uderzenie tarcza
^.*(boska moc|szokujace ugryzienie|mrozace ugryzienie|wyssanie umyslu|kwasowe ugryzienie|zrace uderzenie|miazdzace walniecie|plomienne ugryzienie|wyssanie zycia|zamaszyste ciecie|uderzenie tarcza|precyzyjne ciecie|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie).*$
^Twoje (boska|szokujace|mrozace|wyssanie|kwasowe|zrace|miazdzace|plomienne|zamaszyste|uderzenie|precyzyjne|ugryzienie)?(moc|umyslu|zycia|tarcza|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie).*$

dziala jakos:
(?i)(Twoje )?(boska moc|szokujace ugryzienie|mrozace ugryzienie|wyssanie umyslu|kwasowe ugryzienie|zrace uderzenie|miazdzace walniecie|plomienne ugryzienie|wyssanie zycia|zamaszyste ciecie|uderzenie tarcza|precyzyjne ciecie|uderzenie|ciecie|pchniecie|smagniecie|szczypniecie|podmuch|walniecie|ugryzienie|uklucie|ssanie|szarza|klepniecie|magia|drapniecie|dziobniecie|siekniecie|uzadlenie|dzgniecie|wstrzasniecie|lupniecie|plomien|chlod|ukaszenie)(.*)
]]--

-- Klasa pancerza: 9 klujace, 9 obuchowe, 9 ciecie   miazdzace walniecie (BASH) drzewca muska cie.BASH

function gag:hit(me, type, rest)
	-- czasem podobne sa chybienia, nie przerabiaj ich
	if string.find(rest, "chybiasz") or string.find(rest, "chybiajac") or string.find(rest, "chybia") or string.find(rest, "zadna moc nie bylaby w stanie") then
		return
  end

	local out = ""
	if me == "Twoje " then
		out = out..self.me
	end
	local type = string.lower(type)
	local dt = gag.dt[type]
	if  utils:endsWith(rest, " cie.") or  utils:endsWith(rest, " cie!") then
		out = out.."<red>OBRAZENIA<reset> "
	end

	local debug = rest
	rest = gag:damage(rest)
	if rest then
		out = out..type.." ("..dt..")"..rest
		creplaceLine(out)
	end

	if not rest  or rest == "" then
		--printer:error("gag", "Error: ".. debug)
	end
end



function gag:missMe(victim)
	deleteLine()
	--creplaceLine(self.me.."<ansi_light_black>MISS")
end

function gag:missLocation(attacker, victim)
	deleteLine()
	--creplaceLine(attacker.." <ansi_light_black>MISS<reset> "..victim)
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
	else
		--printer:error("gag", "<red>gag:damage() BRAKUJE typu obrazen")
		return false
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

function gag:eff(type)
	echo(" ")
	printer:link(false, "("..base.effect[type].name..")", "printer:effect(base.effect['"..type.."'])")
--[[
ITEM_BLESS
ITEM_EVIL
ITEM_DARK
WEAPON_VAMPIRIC
WEAPON_POISON
WEAPON_KEEN
WEAPON_FLAMING
]]--
end


--[[



if ( IS_SET( obj->value[ 4 ], WEAPON_FLAMING ) )
		print_char( ch, "%s okrywa ledwo widoczna, ognista aura.\n\r", capitalize( obj->name4 ) );

if ( IS_SET( obj->value[ 4 ], WEAPON_FROST ) )
		print_char( ch, "%s okrywa ledwo widoczna, zamra�aj�ca aura.\n\r", capitalize( obj->name4 ) );

if ( IS_SET( obj->value[ 4 ], WEAPON_TOXIC ) )
		print_char( ch, "%s okrywa ledwo widoczna, �r�ca aura.\n\r", capitalize( obj->name4 ) );

if ( IS_SET( obj->value[ 4 ], WEAPON_SACRED ) )
		print_char( ch, "%s okrywa pot��na, �wi�ta aura.\n\r", capitalize( obj->name4 ) );

if ( IS_SET( obj->value[ 4 ], WEAPON_SHOCKING ) )
		print_char( ch, "W %s zgromadzono pote�ny, elektryczny �adunek.\n\r", obj->name5 );

if ( IS_SET( obj->value[ 4 ], WEAPON_VAMPIRIC ) )
		print_char( ch, "Czujesz, jakby %s wysysa�o z otoczenia si�y witalne.\n\r", obj->name5 );

if ( IS_SET( obj->value[ 4 ], WEAPON_RESONANT ) )
		print_char( ch, "Z %s wydobywaj� si� lekkie wibracje.\n\r", obj->name2 );







		#define WEAPON_FLAMING           (A) // wali od ognia
		#define WEAPON_FROST             (B) // wali od zimna
		#define WEAPON_VAMPIRIC          (C) // wysysa hapki
		#define WEAPON_SHARP             (D) // ostre, niewielkie premie do dama, moze wrzucic bleeding wound
		#define WEAPON_VORPAL            (E) // bardzo ostre, przebija stona, znaczace premie do dama, moze wrzucic bleeding wound
		#define WEAPON_TWO_HANDS         (F) // trzyma sie to w dwoch lapkach
		#define WEAPON_SHOCKING          (G) // wali od elektrycznosci
		#define WEAPON_POISON            (H) // jebniety dostaje poisona
		#define WEAPON_DISPEL            (I) // teoretycznie castuje przy ciosie dispel magic, ale to chyba nie dziala
		#define WEAPON_RANDOM_MAGIC_PLUS (J) // randomowo dodaje broni ummagicznienie na poziomie 0-3
		#define WEAPON_PRIMARY           (K) // tylko w wiodaca reka
		#define WEAPON_TOXIC             (L) // wali od kwasu
		#define WEAPON_SACRED            (M) // taka swieta bron - dodatkowe damy w undeady
		#define WEAPON_RESONANT          (N) // wali od dzwieku
		#define WEAPON_INJURIOUS         (O) // wrzuca flage bleeding wound na 25% niezaleznie od conow
		#define WEAPON_KEEN              (Q) // Wywarzone ostrze(lub ogolnie - bron) ktorym latwiej jest zadac cios krytyczny
		#define WEAPON_THUNDERING        (R) // W broni zakleta jest esencja sily, udany cios krytyczny zada jeszcze wieksze obrazenia
		#define WEAPON_UNBALANCED        (S) // bron przekleta ze stala szansa na nie trafienie
		#define WEAPON_WICKED            (T) // bron przekleta - wysysa punkty zycia w momencie zadania ciosu z trzymajacego bron
		#define WEAPON_HEARTSEEKER       (U) // bron samodzielnie dazy do serca przeciwnika, bonus dla BS'a oraz hitroll











-- osoba moja 'cie'
-- Moje
Probujesz wyprowadzic cios, ale chybiasz (.*) haniebnie\.
Atakujesz, ale w ostatniej chwili tracisz rownowage i chybiasz (.*)\.
Chybiasz (.*)\.
Niestety mimo calego wysilku wlozonego w uderzenie chybiasz (.*)\.
Twoje uderzenie przecina z sykiem powietrze chybiajac (.*) o wlos\.
Balansujesz cialem probujac trafic (.*), ale chybiasz\.
Probujesz walnac (.*), ale mijasz sie ze swoim celem\.
(.*) w ostatniej chwili odskakuje do tylu i twoj atak nie trafia


-- lokacja
(.*) probuje wyprowadzic cios, ale chybia (.*) haniebnie\.
(.*) atakuje (.*), ale w ostatniej chwili traci rownowage i chybia\.
(.*) chybia (.*)\.
(.*) wklada sporo wysilku w ten cios, jednak chybia (.*)\.
Uderzenie (.*) przecina z sykiem powietrze chybiajac (.*) o wlos\.
(.*) balansuje cialem probujac trafic (.*), ale chybia\.
(.*) probuje walnac (.*), ale mija sie ze swoim celem\.

-- Lokacja reverse
(.*) z latwoscia unika ataku i cios (.*) nie trafia\.
(.*) w ostatniej chwili odskakuje do tylu i cios (.*) nie trafia\.
(.*) w ostatniej chwili robi unik i cios (.*) nie trafia\.
(.*) zrecznie robi unik i cios (.*) nie trafia\.
(.*) w ostatniej chwili odtacza sie i cios (.*) nie trafia\.





-- POWALENIA
Gwardzista powala Linka na ziemie uderzajac calym cialem.








]]--
