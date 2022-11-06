include prelude
import osproc

const opts = {poUsePath, poDaemon, poStdErrToStdOut}
var p = startProcess("checkupdates", "", [], nil, opts)
var i = 0

for line in p.lines:
  inc i

echo i
