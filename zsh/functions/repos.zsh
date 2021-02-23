
# List repos and latest commits with fzf
# Usage: type `repos ~/path/to/repos` path defaults to $(pwd).
repos () {
  if [[ $# -eq 1 ]] && cd $1
  cd `ls -t | fzf --reverse --preview "cd {} && if [ -d .git ]; then git log -3 --no-merges --color --format='%Cgreen%ar%Creset by %an%n(%h) %s%n' && git status -sb; fi"`
}
