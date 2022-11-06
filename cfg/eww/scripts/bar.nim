import os, osproc, strutils

if "*bar" in execCmdEx("eww windows").output:
    discard execShellCmd("killall eww")
else:
    discard execShellCmd("eww open bar")
