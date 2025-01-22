base = base or {}
base.jsonTeacher = {}
base.jsonBook = {}

function base:init()
  self.jsonTeacher = utils:readJson("scripts/base/teachers.json")
  self.jsonBook = utils:readJson("scripts/base/book.json")

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
-nekromanta Nagash
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

-Narshe
[28063] starozytna ksiega wywolywan: 'fireball' 'cone of cold' 'iceshield' 'force bolt' 'energy strike'

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
