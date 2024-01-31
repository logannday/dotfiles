#!/bin/sh

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Function to create symbolic link
create_symlink() {
    ln -s -f "$SCRIPT_DIR/$1" "$HOME/$2"
}

# Install JetBrains Mono
install_jetbrains_mono() {
    # Replace the URL with the actual download link
    wget -O /tmp/jetbrains_mono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip
    unzip /tmp/jetbrains_mono.zip -d /tmp
    fc-cache -f -# Check the operating system and install the font accordingly
    if [ "$(uname)" == "Darwin" ]; then
        # macOS
        cp /tmp/JetBrainsMono*/*.ttf ~/Library/Fonts/
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        # Linux
        cp /tmp/JetBrainsMono*/*.ttf ~/.local/share/fonts/
        fc-cache -f -v
    else
        echo "Unsupported operating system"
        exit 1
    fi
}

# Example usage
create_symlink vimrc .vimrc
create_symlink zshrc .zshrc
create_symlink zshenv .zshenv
create_symlink alacritty .config/alacritty
create_symlink nvim .config/nvim
create_symlink vim .vim

# Install JetBrains Mono (uncomment if needed)
# install_jetbrains_mono
