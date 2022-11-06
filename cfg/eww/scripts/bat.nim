include prelude
import osproc, terminal, strformat

if paramCount() < 1:
  stdout.styledWriteLine(fgRed, "Error: ", fgWhite, "Please specify what you want to do")
  quit 1

let action = paramStr 1

let bat = "BAT0"

proc getPercent(): int =
  result = execCmdEx(fmt"upower -i /org/freedesktop/UPower/devices/battery_{bat} | grep perc")[0].split(":")[1].strip().replace("%", "").split(".")[0].parseInt()

proc getStatus(): string =
  result = execCmdEx(fmt"upower -i /org/freedesktop/UPower/devices/battery_{bat} | grep state")[0].split(":")[1].strip()

proc getIcon(): string =
  let perc = getPercent()
  let status = getStatus()
  if status == "charging":
    return ""
  case perc:
    of 0..9:
      return ""
    of 10..19:
      return ""
    of 20..29:
      return ""
    of 30..39:
      return ""
    of 40..49:
      return ""
    of 50..59:
      return ""
    of 60..69:
      return ""
    of 70..79:
      return ""
    of 80..89:
      return ""
    of 90..99:
      return ""
    of 100:
      return ""
    else:
      return ""

case action:
  of "percent":
    echo getPercent()
  of "icon":
    echo getIcon()
  else:
    stdout.styledWriteLine(fgRed, "Error: ", fgWhite, "Unknown action")
    quit 1
