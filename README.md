# Dotfiles

Manage your dotfiles and bootstrap your workstation


## Bootstrap

Run `./bootstrap` to install necessary packages. It's written for Ubuntu 18.04.

Specifically the script will:
- Add apt repos for Alacritty and Docker.
- Install Docker and its dependencies, add your used to `docker` group.
- Install Homebrew and packages listed in the `Brewfile`.
- Install GUI applications with snap.

Don't run the script with `sudo`. However, when started you will be asked for your password. This is
necessary to add apt repos and install packages. 


## Dotfiles

Run `./install` to symlink dotfiles using [Dotbot](https://github.com/cnishathalye/dotbot).

