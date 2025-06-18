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

# Function to check if Git is installed
check_git() {
    if command -v git &>/dev/null; then
        echo "Git is already installed: $(git --version)"
    else
        echo "Installing Git via Homebrew..."
        brew install git
        echo "Git installed successfully: $(git --version)"
    fi
}

# Run functions
check_homebrew
check_git
