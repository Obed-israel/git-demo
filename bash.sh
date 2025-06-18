#!/bin/bash

# Script to install Git on macOS using Homebrew

# Function to check if Homebrew is installed
check_homebrew() {
    if ! command -v brew &>/dev/null; then
        echo "Homebrew not found. Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}
