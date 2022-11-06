include prelude
import osproc, terminal

if paramCount() < 1:
  stdout.styledWriteLine(fgRed, "Error: ", fgWhite, "Please specify what you want to do")
  quit 1

let action = paramStr 1

proc songTitle(): void =
  const opts = {poUsePath, poDaemon, poStdErrToStdOut}
  var p = startProcess("playerctl", "", ["--follow", "metadata", "--format", "{{artist}} - {{title}}"], nil, opts)

  for line in p.lines:
    if line.len > 30:
      echo line[0..15] & "..."
    elif line.strip().len == 0:
      echo "Not Playing"
    else:
      echo line

proc toggle(): void =
  let status = execCmdEx("playerctl status")[0].strip
  if status == "Playing":
    echo "Pausing..."
    discard execCmd("playerctl pause")
  else:
    echo "Resuming..."
    discard execCmd("playerctl play")

proc stat(): bool =
  let status = execCmdEx("playerctl status")[0].strip
  if status == "No players found":
    return false
  else:
    return true

case action:
  of "title":
    songTitle()
  of "toggle":
    toggle()
  of "stat":
    echo $stat()
  else:
    stdout.styledWriteLine(fgRed, "Error: ", fgWhite, "Unknown action")
    quit 1
