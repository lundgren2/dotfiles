# List repos and latest commits with fzf
# Usage: type `c`.
c () {
  cd ~/Dev/spotify/js-sdk
  cd `ls -t | fzf --reverse --preview "cd {} && if [ -d .git ]; then git log -3 --no-merges --color --format='%Cgreen%ar%Creset by %an%n(%h) %s%n' && git status -sb; fi"`
}
