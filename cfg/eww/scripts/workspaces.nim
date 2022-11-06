include prelude
import osproc, strformat

const opts = {poUsePath, poDaemon, poStdErrToStdOut}
var p = startProcess("dkcmd", "", ["status", "type=ws"], nil, opts)

for line in p.lines:
  var status: seq[string]
  var icons = @["", "", "", "", "", "", "﯂", "", ""]
  for ws in line.split(":"):
    if "A" in ws or "I" in ws:
      status.add("focused")
    elif "a" in ws:
      status.add("occupied")
    elif "i" in ws:
      status.add("vacant")
    else:
      status.add("unknown")
  echo fmt"(box :class 'workspaces' :spacing '22' (button :onclick 'dkcmd ws view 1' :class '{status[0]}' '{icons[0]}')(button :onclick 'dkcmd ws view 2' :class '{status[1]}' '{icons[1]}')(button :onclick 'dkcmd ws view 3' :class '{status[2]}' '{icons[2]}')(button :onclick 'dkcmd ws view 4' :class '{status[3]}' '{icons[3]}')(button :onclick 'dkcmd ws view 5' :class '{status[4]}' '{icons[4]}')(button :onclick 'dkcmd ws view 6' :class '{status[5]}' '{icons[5]}')(button :onclick 'dkcmd ws view 7' :class '{status[6]}' '{icons[6]}')(button :onclick 'dkcmd ws view 8' :class '{status[7]}' '{icons[7]}')(button :onclick 'dkcmd ws view 9' :class '{status[8]}' '{icons[8]}'))" 
