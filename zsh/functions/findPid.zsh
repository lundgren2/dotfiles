# Find ID for process
findPid () { lsof -t -c "$@" ; }
