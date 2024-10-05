{ pkgs }:

with pkgs; [
  # General packages for development and system management
  bash-completion
  bat
  btop
  coreutils
  du-dust
  eza
  killall
  mas
  just
  colima
  rclone

  # Encryption and security tools
  age
  age-plugin-yubikey
  gnupg
  libfido2
  # pinentry
  yubikey-manager

  # Cloud-related tools and SDKs
  #
  # docker marked broken as of Nov 15, 2023
  # https://github.com/NixOS/nixpkgs/issues/267685
  #
  # docker
  # docker-compose
  #
  tflint

  # Media-related packages
  ffmpeg

  # Node.js development tools
  biome
  nodePackages.nodemon
  nodePackages.prettier
  nodePackages.npm
  nodePackages.pnpm
  nodejs

  # Text and terminal utilities
  htop
  iftop
  jq
  ripgrep
  tree
  tmux
  # unrar
  unzip
  fzf
  oh-my-zsh
  zsh-completions
  zsh-powerlevel10k
  kubernetes-helm
  google-cloud-sdk
  kubectx
  autojump


  # Python packages
  python311
  python311Packages.pip
  poetry
  # python39Packages.poetry


  quicktype
  difftastic
]