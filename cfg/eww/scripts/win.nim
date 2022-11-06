include prelude
import osproc

const opts = {poUsePath, poDaemon, poStdErrToStdOut}
var p = startProcess("dkcmd", "", ["status", "type=win"], nil, opts)
var max = 25


for line in p.lines:
  if line.len > max:
    echo line[0..max] & "..."
  else:
    echo line
