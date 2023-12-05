# Evan's Mac setup

This is a Nix-based setup for my Mac development environment.

It's based on a starter template from https://github.com/dustinlyons/nixos-config


### 1. Install dependencies

**xcode:**
```sh
xcode-select --install
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