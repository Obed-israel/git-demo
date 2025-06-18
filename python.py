import subprocess
import shutil
import sys

def is_installed(command):
    return shutil.which(command) is not None

def install_homebrew():
    print("Homebrew not found. Installing Homebrew...")
    try:
        subprocess.run(
            [
                "/bin/bash",
                "-c",
                "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            ],
            check=True
        )
        print("✅ Homebrew installed successfully.")
    except subprocess.CalledProcessError:
        print("❌ Failed to install Homebrew.")
        sys.exit(1)
