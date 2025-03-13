#!/bin/bash

. scripts/prerequisites.sh
. scripts/brew-install-custom.sh
. scripts/osx-defaults.sh

info "Dotfiles intallation initialized..."
read -p "Install apps? [y/n] " install_apps
read -p "Overwrite existing dotfiles? [y/n] " overwrite_dotfiles

if [[ "$install_apps" == "y" ]]; then
  printf "\n"
  info "===================="
  info "Prerequisites"
  info "===================="

  install_xcode
  install_homebrew

  printf "\n"
  info "===================="
  info "Apps"
  info "===================="

  run_brew_bundle
  info "===================="
fi

printf "\n"
info "===================="
info "OSX System Defaults"
info "===================="

# register_keyboard_shortcuts
apply_osx_system_defaults

printf "\n"
info "===================="
info "Terminal"
info "===================="

info "Adding .hushlogin"
touch ~/.hushlogin

printf "\n"
info "===================="
info "Symbolic Links"
info "===================="

stow .

success "Dotfiles set up successfully."
