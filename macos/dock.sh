#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/Applications/Spark.app"
dockutil --no-restart --add "/Applications/Slack.app"
dockutil --no-restart --add "/Applications/Google Chrome.app"
dockutil --no-restart --add "/Applications/iTerm.app"
dockutil --no-restart --add "/Applications/Visual Studio Code.app"
dockutil --no-restart --add "/Applications/Spotify.app"
# dockutil --no-restart --add "/System/Applications/System Preferences.app"

killall Dock
