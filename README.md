# Evan's Mac setup

This is a Nix-based setup for my Mac development environment.

It's based on a starter template from https://github.com/dustinlyons/nixos-config


- [Evan's Mac setup](#evans-mac-setup)
    - [1. Install dependencies](#1-install-dependencies)
    - [2. Clone repo](#2-clone-repo)
    - [3. Install Nix](#3-install-nix)
    - [4. Apply config](#4-apply-config)
    - [5. Extras](#5-extras)
      - [Fonts](#fonts)
      - [Software](#software)


### 1. Install dependencies

**xcode:**
```sh
xcode-select --install
softwareupdate --install-rosetta --agree-to-license
```

**git:**

https://sourceforge.net/projects/git-osx-installer/files/git-2.23.0-intel-universal-mavericks.dmg/download?use_mirror=autoselect

### 2. Clone repo

```sh
cd ~/Documents
git clone git@github.com:TheJokersThief/MacNixSetup.git
cd MacNixSetup
```

### 3. Install Nix
```sh
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

### 4. Apply config
```sh
bash ./bin/apply
```


### 5. Extras

#### Fonts

* [MesloLFG NF](https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf)
* [IBM Plex Mono](https://fonts.google.com/specimen/IBM+Plex+Mono)

#### Software

* [Apple Juice](https://github.com/raphaelhanneken/apple-juice/releases) – Better battery icon
* [espanso](https://espanso.org/install/) – Text expander