alias reloadCfg='source ~/.zshrc'
alias zshconfig="code ~/Dropbox/dotfiles/zshrc"
alias w++14='g++ -std=c++14 -pedantic -Wall -Wextra'
alias w++17='g++ -std=c++17 -pedantic -Wall -Wextra'

# tmux aliases
alias ta='tmux attach'
alias tls='tmux ls'
alias tat='tmux attach -t'
alias tns='tmux new-session -s'

# Web development
alias apacheEdit='sudo code /etc/apache2/httpd.conf'
alias apacheRestart='sudo apachectl graceful'
alias hostEdit='sudo code $DOTFILES/tobiaslundgren.conf'
alias flushDNS='dscacheutil -flushcache'
alias fixWpPermissions='chmod 775 wp-content/uploads/; sudo chown -R $USER:_www .; sudo chmod -R g+w .'

# Git
alias gitIgnoreUpdate='git rm -r --cached .; git add .; git commit -m ".gitignore updated"'

gh () {
  open $(git config remote.origin.url | sed "s/git@\(.*\):\(.*\).git/https:\/\/\1\/\2/")/$1$2
}

# Open current branch
alias ghb='gh tree/$(git symbolic-ref --quiet --short HEAD )'

# Open current directory/file in current branch
alias ghbf='gh tree/$(git symbolic-ref --quiet --short HEAD )/$(git rev-parse --show-prefix)'

# Open current directory/file in master branch
alias ghf='gh tree/master/$(git rev-parse --show-prefix)'

# Temp projects
alias Ipo='cd ~/Sites/ipo/wp-content/themes/ipo'
alias Higbird='cd ~/Dev/Clients/higbird'

# Hedvig
alias hedvig-graphql="sh scripts/generate-apollo-files.sh"
alias hedvig-graphqlSchema="sh scripts/update-graphql-schema.sh"
alias hedvig-translations="swiftTranslationsCodegen --projects '[App, IOS]' --destination 'Src/Assets/Localization/Localization.swift'" alias assets="swiftgen"

# System operations
alias updateAll='brew upgrade; brew upgrade yarn'
alias dockFast='defaults write com.apple.dock autohide-time-modifier -float 0.35;defaults write com.apple.Dock autohide-delay -float 0.0; killall Dock' # Makes the dock to appear faster
alias dockDefault='defaults delete com.apple.Dock autohide-delay;defaults delete com.apple.dock autohide-time-modifier;killall Dock' # Restore dock to default
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete" #clean up .DS_Store-files
alias restartTochbar='pkill "Touch Bar agent"; killall "ControlStrip";'

# Better terminal
cd() { builtin cd "$@"; ls -a; }            # Always list directory contents upon 'cd'
o () { open -a "$1"; }                      # Open macOS app
ql () { qlmanage -p "$*" >& /dev/null; }    # Opens any file in MacOS Quicklook Preview
mcd () { mkdir -p "$1" && cd "$1"; }        # Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # Moves a file to the MacOS trash
zipf () { zip -r -X "$1".zip "$1" ; }       # Create a ZIP archive of a folder
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias path='echo -e ${PATH//:/\\n}'         # Echo all executable paths
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less' # Directory Listing
alias qfind="find . -name "                 # Quickly search for file

ff () { /usr/bin/find . -name "$@" ; }      # Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }
findPid () { lsof -t -c "$@" ; }
