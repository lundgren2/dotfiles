# By: Tobias Lundgren <github.com/lundgren2>

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/bin
export GOPATH=$HOME/go

#   -----------------------------
#   OH MY ZSH
#   -----------------------------
# themes: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# favourite themes: mh, robbyrussell, agnoster, gitster, sorin

# plugins: Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# install by: brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
# z plugin: add to ~/.z.sh https://github.com/rupa/z/blob/master/z.sh

export ZSH=/Users/tobiaslundgren/.oh-my-zsh

ZSH_THEME="mh"

plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  z
)
source $ZSH/oh-my-zsh.sh

# Set prompt, similar to Pure by Sindre Sorhus but much faster
local path_string="%{$fg[yellow]%}%~"
local prompt_symbol=$'\n'"❯" # Symbol stolen from Pure prompt
local return_status="%(?:%{$fg[blue]%}$prompt_symbol:%{$fg[red]%}$prompt_symbol)"
PROMPT=$'\n''${path_string} ${return_status} %{$reset_color%}'

# Default pure promt
# autoload -U promptinit; promptinit
# prompt pure


# For a full list of active aliases, run `alias`.
#   -----------------------------
#   PERSONAL SETTINGS
#   -----------------------------

# CONSTANTS
export SSH_KEY_PATH="~/.ssh/rsa_id"
export DOTFILES_FOLDER=~/Dropbox/dotfiles
export EDITOR=/usr/bin/nano

export BLOCKSIZE=1k
alias edit='code'
alias reloadCfg='source ~/.zshrc'
alias zshconfig="code /Users/tobiaslundgren/Dropbox/dotfiles/.zshrc"

# C++
alias w++14='g++ -std=c++14 -pedantic -Wall -Wextra'
alias w++17='g++ -std=c++17 -pedantic -Wall -Wextra'

#   -----------------------------
#   Web development
#   -----------------------------
alias Sites='cd ~/Sites'
alias Dev='cd ~/Dev'
alias Clients='cd ~/Dev/Clients'
alias Projects='cd ~/Dev/Projects'
alias Practise='cd ~/Dev/Practise'
alias School='cd ~/Dev/School'
alias apacheEdit='sudo code /etc/apache2/httpd.conf'
alias apacheRestart='sudo apachectl graceful'
alias hostEdit='sudo code $DOTFILES_FOLDER/tobiaslundgren.conf'
alias flushDNS='dscacheutil -flushcache'
alias fixWpPermissions='chmod 775 wp-content/uploads/; sudo chown -R $USER:_www .; sudo chmod -R g+w .'
alias bsstart='browser-sync start --server --files "*.html, css/*.css"'

#   -----------------------------
#   GIT
#   -----------------------------

alias gitIgnoreUpdate='git rm -r --cached .; git add .; git commit -m ".gitignore updated"'
gh () {
  'open $(git config remote.origin.url | sed "s/git@\(.*\):\(.*\).git/https:\/\/\1\/\2/")/$1$2'
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

#   -----------------------------
#   SYSTEM OPERATIONS
#   -----------------------------
alias updateAll='brew upgrade; brew upgrade yarn'
alias dockFast='defaults write com.apple.dock autohide-time-modifier -float 0.35;defaults write com.apple.Dock autohide-delay -float 0.0; killall Dock' # Makes the dock to appear faster
alias dockDefault='defaults delete com.apple.Dock autohide-delay;defaults delete com.apple.dock autohide-time-modifier;killall Dock' # Restore dock to default
alias cleanupDS="find . -type f -name '*.DS_Store' -ls -delete" #clean up .DS_Store-files
alias restartTochbar='pkill "Touch Bar agent"; killall "ControlStrip";'

#   -----------------------------
#   Better terminal
#   -----------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ls -a; }            # Always list directory contents upon 'cd'
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias f='open -a Finder ./'

o () { open -a "$1"; }                      # Open macOS app
ql () { qlmanage -p "$*" >& /dev/null; }    # Opens any file in MacOS Quicklook Preview
mcd () { mkdir -p "$1" && cd "$1"; }        # Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # Moves a file to the MacOS trash

zipf () { zip -r -X "$1".zip "$1" ; }       # Create a ZIP archive of a folder

alias path='echo -e ${PATH//:/\\n}'         # Echo all executable paths
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less' # Directory Listing

#   Find
spotlight () { mdfind "kMDItemDisplayName == '$@'wc"; }

alias qfind="find . -name "                 # Quickly search for file

ff () { /usr/bin/find . -name "$@" ; }      # Find file under the current directory
ffs () { /usr/bin/find . -name "$@"'*' ; }  # Find file whose name starts with a given string
ffe () { /usr/bin/find . -name '*'"$@" ; }

#   Process management
findPid () { lsof -t -c "$@" ; }


#   -----------------------------
#   Open Programs/URLs
#   -----------------------------
alias Slack='open -a Slack'
alias Spotify='open -a Spotify'
alias SourceTree='open -a SourceTree'
alias Spark='open -a Spark'
alias Chrome='open -a Google\ Chrome'
alias Messages='open -a Messages'

#   -----------------------------
#   OPTIONAL SETTINGS
#   -----------------------------

# User configurations
# language environment
# export LANG=sv_SE.UTF-8
