base = base or {}
base.jsonTeacher = {}
base.jsonBook = {}
base.jsonSpell = {}
base.spellDictionary = {}
--[[

3. Wprowadzono nowe umiejętności ( skile dostępne tylko dla magów na 31 levelu ) (nauczyć się można wcześniej ale używać dopiero na 31) - dostępne tylko z ksiąg ze skilami.
- fire mastery
- cold mastery
- acid mastery
- lighting mastery

Dana masterka szkoli się podczas używania speli ofensywnych z danego żywiołu.
Jak masterka się odpali nakłada na przeciwnika czasowy affekt.
- zmiejsza odporność przeciwnika na dany żywioł (wartość zależna od poziomu masterki)
- co runde mob otrzymuje dodatkowe obrażenia od danego affektu.
- rzucając czar z tego samego żywiołu co mob otrzymal affect mamy szansę ( zależy od masterki) na wzrost obrażeń danego spella + bonus zależnie od zywiołu
(ogien - mocniejsze obrazenia, zimno - szansa na zamrozenie, pioruny - szansa na porażenie i wywrotkę, kwas - mocniejsze obrazenia ).

Można posiadać wiele masterek i rzucając czary różnych żywiołów można na przeciwnika nałożyć affecty ze wszystkich masterek.


]]--


function base:init()
  self.jsonTeacher = utils:readJson("scripts/base/teachers.json")
  self.jsonBook = utils:readJson("scripts/base/book.json")
  self.jsonSpell = utils:readJson("scripts/base/spell.json")
  self:buildSpellDictionary()
end

function base:buildSpellDictionary()
  for i=1, #self.jsonSpell do
    local name = self.jsonSpell[i][1]
    local first = string.sub(name, 1, 1)
    if not self.spellDictionary[first] then
      self.spellDictionary[first] = {}
    end
    table.insert(self.spellDictionary[first], name)
  end
end

function base:isInSpellDictionary(name)
  local first = string.sub(name, 1, 1)
  if self.spellDictionary[first] then
    return utils:inArray2(name, self.spellDictionary[first])
  end
  return false
end

function base:spellSearch(spell)
  spell = string.lower(spell)
  local book = {}
  local teacher = {}
  for i, v in pairs(self.jsonBook) do
    for j, s in pairs(v.spells) do
      if string.lower(s) == spell then
        table.insert(book, v)
      end
    end
  end
  for i, v in pairs(self.jsonTeacher) do

      for j, s in pairs(v.skills) do

        if string.lower(s.name) == spell then
          display(i)
          table.insert(teacher, v)
        end
      end
  end
  printer:spellList(spell, teacher, book)
end

-- DODAC DROWIEGO CZARNOKSIEZNIKA Z NK I JEGO KSIAZKWE   ksiega magii drowow
-- QUAZ W BAZIE ID VNUM DO UZUPELNIENIA - umbrowe nowy boss
function base:bookClosest()
  local currentID = getPlayerRoom()
  for i, v in pairs(self.jsonBook) do
    if v.roomVnum then

      if getPath(currentID,v.roomVnum) then

        if #speedWalkPath < 50 then

          --utils:inArray

          echo(v.mob.."("..v.class..")")

          cechoLink("<white><<green>Rura<white>>", [[gotoRoom(]]..v.roomVnum..[[)]], "", true)
          echo("\n")
        end

      else
        --echo("sraka")
      end
    else
      echo(v.mob)
    end

  end

end

function base:teacherClosest()
  local currentID = getPlayerRoom()
  for i, v in pairs(self.jsonTeacher) do
    if v.roomVnum then

      if getPath(currentID,v.roomVnum) then

        if #speedWalkPath < 50 then

          --utils:inArray

          echo(v.mob)

          cechoLink("<white><<green>Rura<white>>", [[gotoRoom(]]..v.roomVnum..[[)]], "", true)
          echo("\n")
        end

      else
        --echo("sraka")
      end
    else
      echo(v.mob)
    end

  end
end


--[[
<<============= lista ksiag dla klasy: Czarodziej =============>>

Dodac:

Bodak Hale Forteca:
[25400] magiczna ksiega czarow: 'dimension door' 'locate object' 'eye of vision' 'hold monster' 'blink'

Lodowy Smok:
[51007] prastara lodowa ksiega: 'blizzard storm' 'power word kill' 'chain lightning' 'absolute magic protection'


ponury mag (+# Gory nad Jaskiniami Naugrimow):
[64939] szara ksiega: 'darkness' 'dismiss undead' 'summon flying creature' 'summon lesser meteor' 'mend golem'


NK:
-nekromanta Nagash     lokacja 55420
[55418] ksiega magii: 'fly' 'unholy fury' 'cone of cold' 'raise ghoul' 'orb of entropy'


Zamek Variotha:
nekromantka Kaylin Ygresse
[30123] notatnik Kaylin: 'ethereal armor' 'ethereal body' 'revive' 'vampiric aura' 'entrophy wave'


Podmrok:
-Czarnoksieznik Zeerith'din (Podmrok gobliny)
[16818] ksiega zaklec: 'force bolt' 'decay' 'vampiric touch' 'fly' 'resist elements'


prog:
-??
[40532] magiczna ksiega lowcy: 'psychic scream' 'summon'

-??
[17963] zakrwawiona, magiczna ksiega: 'giant strength' 'behemot toughness' 'deflect wounds' 'change weapon' 'summon ancient creature'

-??
[14074] ksiega czarow: 'dismiss insect' 'magic missile' 'mind fortess' 'piercing sight'

-??
[10957] ksiega mocy: 'mend' 'pass door' 'spirits armor' 'horrid wilting' 'vampiric touch'

gowno:
[26968] ksiega ochrony przed kwasem: 'endure acid'
[26984] Ksiega z magicznym zakleciem "Swiatlo": 'light'
[585] magiczna ksiega z czarem 'swiatlo': 'light'
[2016] ksiega ochrony przed ogniem: 'endure fire'
[2319] ksiega ochrony przed zimnem: 'endure cold'
[14069] magiczna ksiega z czarem 'uderzenie mocy': 'force bolt'
[14070] magiczna ksiega z czarem 'kwasowy podmuch': 'acid blast'
[3253] zielona ksiega: 'acid hands'
[9353] ksiega ochrony przed elektrycznoscia: 'endure lightning'

]]--
