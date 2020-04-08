# we put downloaded binaries to ~/.local/bin, make sure it's added to $PATH
set fish_user_paths $PATH ~/.local/bin 


# Add Homebrew to PATH
set -gx HOMEBREW_PREFIX "/home/linuxbrew/.linuxbrew";
set -gx HOMEBREW_CELLAR "/home/linuxbrew/.linuxbrew/Cellar";
set -gx HOMEBREW_REPOSITORY "/home/linuxbrew/.linuxbrew/Homebrew";
set -g fish_user_paths "/home/linuxbrew/.linuxbrew/bin" "/home/linuxbrew/.linuxbrew/sbin" $fish_user_paths;
set -q MANPATH; or set MANPATH ''; set -gx MANPATH "/home/linuxbrew/.linuxbrew/share/man" $MANPATH;
set -q INFOPATH; or set INFOPATH ''; set -gx INFOPATH "/home/linuxbrew/.linuxbrew/share/info" $INFOPATH;


# set flux namespace
set -gx FLUX_FORWARD_NAMESPACE flux


# Disable fish greeting
set fish_greeting

# Set aliases
alias lll "ls -la --group-directories-first"
alias ll "ls -l --group-directories-first"
alias kc "kubectl"
alias kx "kubectx"
alias kn "kubens"
alias kt "kubetail"
alias mgs "mgitstatus --depth 5 ~/workspace"
alias mgsf "mgitstatus -f --depth 5 ~/workspace"


# Enable starship prompt
starship init fish | source

