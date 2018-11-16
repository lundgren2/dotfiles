# Setup development environment on macOS

#### By: Tobias Lundgren

## Apps

- [Hyper](https://releases.hyper.is/download/mac) - Hackable terminal
- [VS Code Insiders](https://go.microsoft.com/fwlink/?LinkId=723966)
- [Spotify](https://www.spotify.com/se/download/)
- [Dropbox](https://www.dropbox.com/downloading?src=index)
- [SourceTree](https://downloads.atlassian.com/software/sourcetree/SourceTree_2.4c.zip?_ga=1.41813542.562858026.1482000003)
- [Jetbrains Toolbox](https://www.jetbrains.com/toolbox/download/download-thanks.html?platform=mac)

**Mac App Store:**

- Spark
- LastPass
- xCode
- Magnet
- Transmit 5

**Homebrew**

Install homebrew:

```sh
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install useful packages:

```sh
brew install git # get newer git version than macOS
brew install node
brew install yarn
brew install zsh zsh-completions zsh-autosuggestions zsh-syntax-highlighting
```

**Brew casks:**

```sh
# list available brew casks
# brew search --casks
brew cask install google-chrome
brew cask install iterm2
brew cask install spotify
brew cask install insomnia # REST client
```

# Shortcuts

### macOS:

http://docs.sublimetext.info/en/latest/reference/keyboard_shortcuts_osx.html

- CMD+ALT+W - Close all windows in a program
- CMD+ALT+H - Hide all other windows / CMD+H (hide active window)
- SHIFT+CMD+Q Logout
- SHIFT+CMD+. show/hide hidden files in terminal

### Termnial

```sh
netstat -r # show all hosts on network
arp -a
lsof -i :8000 # list all processes running on port
curl -O http://www.thefilename.com/thefile/url.mp3 # download file from terminal
```

# Setup Local Apache server

See [apache/setup-apache.md](https://github.com/lundgren2/dotfiles/blob/master/apache/setup-apache.md)
