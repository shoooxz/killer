base = base or {}
base.jsonTeacher = {}
base.jsonBook = {}

function base:init()
  self.jsonTeacher = utils:readJson("scripts/base/teachers.json")
  self.jsonBook = utils:readJson("scripts/base/book.json")

end


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
