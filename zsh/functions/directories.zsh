cd() { builtin cd "$@"; ls -a; }            # Always list directory contents upon 'cd'
mcd() { mkdir -p "$1" && cd "$1"; }         # Make directory and change into it.
ql () { qlmanage -p "$*" >& /dev/null; }    # Opens any file in MacOS Quicklook Preview
trash () { command mv "$@" ~/.Trash ; }     # Moves a file to the MacOS trash
zipf () { zip -r -X "$1".zip "$1" ; }       # Create a ZIP archive of a folder



