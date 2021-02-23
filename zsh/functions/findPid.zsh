# Find ID for process
findpid () { lsof -t -c "$@" ; }
