#! /usr/bin/env bash
set -e
###########################################################################
#
# Inkscape Bootstrap Installer
# https://github.com/polymimetic/ansible-role-inkscape
#
# This script is intended to replicate the ansible role in a shell script
# format. It can be useful for debugging purposes or as a quick installer
# when it is inconvenient or impractical to run the ansible playbook.
#
# Usage:
# wget -qO - https://raw.githubusercontent.com/polymimetic/ansible-role-inkscape/master/install.sh | bash
#
###########################################################################

if [ `id -u` = 0 ]; then
  printf "\033[1;31mThis script must NOT be run as root\033[0m\n" 1>&2
  exit 1
fi

###########################################################################
# Constants and Global Variables
###########################################################################

readonly GIT_REPO="https://github.com/polymimetic/ansible-role-inkscape.git"
readonly GIT_RAW="https://raw.githubusercontent.com/polymimetic/ansible-role-inkscape/master"

###########################################################################
# Basic Functions
###########################################################################

# Output Echoes
# https://github.com/cowboy/dotfiles
function e_error()   { echo -e "\033[1;31m✖  $@\033[0m";     }      # red
function e_success() { echo -e "\033[1;32m✔  $@\033[0m";     }      # green
function e_info()    { echo -e "\033[1;34m$@\033[0m";        }      # blue
function e_title()   { echo -e "\033[1;35m$@.......\033[0m"; }      # magenta

###########################################################################
# Install Inkscape
# https://inkscape.org/en/
#
# http://ubuntuhandbook.org/index.php/2017/01/install-inkscape-0-92-ppa-ubuntu-16-04-16-10-14-04/
###########################################################################

install_inkscape() {
  e_title "Installing Inkscape"

  # Add inkscape PPA
  if ! grep -q "inkscape.dev/stable" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    sudo add-apt-repository -y ppa:inkscape.dev/stable
    sudo apt-get update
  fi

  # Install inkscape
  sudo apt-get install -yq inkscape

  e_success "Inkscape installed"
}

###########################################################################
# Program Start
###########################################################################

program_start() {
  install_inkscape
}

program_start