# Function to update JavaScript SDK linked repositories
update_js_sdk_linked() {
    set -e  # Exit script on first error

    current_path=$(pwd)

    # An array of your repo directories
    declare -a repos=(
      "$HOME/Dev/spotify/js-sdk-linked/playback"
      "$HOME/Dev/spotify/js-sdk-linked/harmony"
      "$HOME/Dev/spotify/js-sdk-linked/harmony-refspeaker"
    )

    # Internal function to stash, rebase, and unstash in each repo
    _update_repo() {
      local repo=$1

      echo "Rebasing $repo with master..."

      # Go to the repo
      cd "$repo" > /dev/null || { echo "Failed to access directory $repo"; }

      # Save the current branch name
      local current_branch
      current_branch=$(git rev-parse --abbrev-ref HEAD)

       # Stash changes and check if something was stashed
      local stash_result
      stash_result=$(git stash)
      local did_stash=0
      if [[ $stash_result != "No local changes to save" ]]; then
        did_stash=1
      fi

      # Fetch and rebase current branch with origin's master
      if ! git fetch origin; then
        echo "Failed to fetch from origin in $repo"
      fi

      if ! git rebase origin/master; then
        echo "Rebase failed in $repo. You may need to resolve conflicts manually."
      fi

     # Only unstash if something was stashed
      if [ "$did_stash" -eq 1 ]; then
        git stash pop
      fi

      # Install dependencies and build
      echo "Installing dependencies and rebuilding..."

      if ! yarn install > /dev/null; then
        echo "Failed to install dependencies in $repo"
      fi

      if ! yarn build > /dev/null; then
        echo "Failed to build in $repo"
      fi

      echo "Finished processing $repo on $current_branch"
    }

    # Iterate over each repo and process it
    for repo in "${repos[@]}"; do
      _update_repo "$repo"
    done

    cd "$current_path" > /dev/null || { echo "Failed to access directory $current_path"; }
    echo "All repos updated!"
}

# Alias
alias update-js-sdk-linked=update_js_sdk_linked
