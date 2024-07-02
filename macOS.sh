#!/usr/bin/env zsh

xcode-select --install

echo "Complete the installation of Xcode Command Line Tools before proceeding."
echo "Press enter to continue..."
read

# Set scroll as traditional instead of natural
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false && killall Finder

# Get the absolute path to the image
IMAGE_PATH="${HOME}/dotfiles/settings/Desktop.png"

# AppleScript command to change to dark mode
osascript <<EOF
tell application "System Events"
    tell appearance preferences
        set currentMode to dark mode
    end tell
end tell
EOF

# Disable scroll direction: natural
defaults write -g com.apple.swipescrolldirection -bool false

# Set to dark mode
defaults write -g AppleInterfaceStyle Dark

# AppleScript command to set the desktop background
# tell application "System Events"
#     set desktopCount to count of desktops
#     repeat with desktopNumber from 1 to desktopCount
#         tell desktop desktopNumber
#             set picture to "$IMAGE_PATH"
#         end tell
#     end repeat
# end tell
# EOF
