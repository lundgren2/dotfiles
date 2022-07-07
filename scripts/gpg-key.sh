# https://gist.github.com/webframp/75c680930b6b2caba9a1be6ec23477c1

KEYBASE_PGP_KEY_ID=191E2AC4EF2A7151

echo "First, install and login on Keybase..."

# First get the public key
keybase pgp export | gpg --import
# Next get the private key
keybase pgp export --secret | gpg --allow-secret-key --import

gpg --list-secret-keys

# Add key to gitconfig
git config --global user.signingkey $KEYBASE_PGP_KEY_ID
git config --global commit.gpgsign true

# to trust ultimately (5):
echo "Trust the key ultimately:"
gpg --edit-key $KEYBASE_PGP_KEY_ID

# Copy key and add to GitHub:
echo "Copy the key to clipboard and add to GitHub:"
gpg --armor --export $KEYBASE_PGP_KEY_ID | pbcopy
open "https://github.com/settings/keys"

# Remove key by sha
# keybase pgp list
# keybase pgp drop long-sha
