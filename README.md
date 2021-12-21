# Dotfiles

Manage your dotfiles and bootstrap your workstation with [Dotbot](https://github.com/cnishathalye/dotbot) and a simple shell script.

Both `bootstrap` and `install` scripts are idempotent - it's safe to run them multiple times.

## Bootstrap

Run `./bootstrap` on a new machine to install necessary packages.

### MacOS

On MacOS it will install Homebrew and packages listed in the `Brewfile`.

### Linux

On Linux it will:

- Add apt repos for Alacritty and Docker.
- Install Docker and its dependencies and add your user to the `docker` group.
- Install Homebrew (Linuxbrew) and packages listed in the `Brewfile`.
- Install additional packages which are not in Apt or Brewfile (like Go or VSCode)

Don't run the script with `sudo`. However, when started you will be asked for your password. This is
necessary to add apt repos and install packages.

## Dotfiles

Run `./install` to symlink dotfiles using [Dotbot](https://github.com/cnishathalye/dotbot).

Symlinks are configured in [install.conf.yaml](install.conf.yaml) file.

## Manual stuff

To dump currently installed Homebrew packages into a file, run:

    brew bundle dump --file dotfiles/brew/Brewfile --force

To dump your repositories using git-get, run:

    git list -o dump > dotfiles/git/repos_dump

