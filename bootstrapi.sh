#/bin/bash


# Set the -e flag to exit on error
set -e

# Set the -x flag to print each command before it is executed
set -x

# Set the -u flag to exit on unset variables
set -u

# Set the -o pipefail flag to exit on pipe errors
set -o pipefail

# Set the DEBIAN_FRONTEND variable to noninteractive
export DEBIAN_FRONTEND=noninteractive


echo "Bootstrapping the system..."
echo "Version 0.1"

# Update the package list
apt-get update -y

# Install the required packages
apt-get install -y nala

# Install the required packages
nala install -y build-essential wget curl git zip unzip vim net-tools iputils-ping dnsutils netcat-traditional gpg passwd fonts-firacode tmux ripgrep sed unzip jq tree btop

# Cloning the .zshrc file to the home directory

wget -O ~/.zshrc https://raw.githubusercontent.com/a-mader/dotfiles/main/zshrc

# Installing zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Source the .zshrc file
source ~/.zshrc

# Zinit self update

zinit self-update


# Change the shell to zsh
usermod -s /usr/bin/zsh $USER

exit 0

