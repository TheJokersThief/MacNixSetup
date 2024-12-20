{ config, pkgs, ... }:

let 
  user = "evansmith";
  machine_name = "arthur-the-tiny";  
in
{

  imports = [
    ./home-manager.nix
    ../shared
    ../shared/cachix
  ];

  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;

  # Setup user, packages, programs
  nix = {
    package = pkgs.nixVersions.latest;
    settings.trusted-users = [ "@admin" "${user}" ];

    gc = {
      user = "root";
      automatic = true;
      interval = { Weekday = 0; Hour = 2; Minute = 0; };
      options = "--delete-older-than 30d";
    };

    # Turn this on to make command line easier
    extraOptions = ''
      experimental-features = nix-command flakes
      extra-platforms = x86_64-darwin aarch64-darwin
    '';
  };

  # Turn off NIX_PATH warnings now that we're using flakes
  system.checks.verifyNixPath = false;

  # Load configuration that is shared across systems
  environment.systemPackages = with pkgs; [
    # emacs-unstable
  ] ++ (import ../shared/packages.nix { inherit pkgs; });

  # Enable fonts dir
  #fonts.fontDir.enable = true;

  networking = {
    computerName = machine_name;
    hostName = machine_name;
    localHostName = machine_name;
  };
  
  # environment = {
  #   loginShell = "/bin/zsh";
  # };

  system = {
    stateVersion = 4;

    defaults = {
      LaunchServices = {
        LSQuarantine = false;
      };

      NSGlobalDomain = {
        AppleShowAllExtensions = true;
        ApplePressAndHoldEnabled = false;

        # System - Expand save panel by default
        NSNavPanelExpandedStateForSaveMode = true;
        # System - Increase window resize speed for Cocoa applications
        NSWindowResizeTime = 0.001;
        # System - Disable auto-correct
        NSAutomaticSpellingCorrectionEnabled = false;
        # System - Disable smart quotes (not useful when writing code)
        NSAutomaticQuoteSubstitutionEnabled = false;
        # System - Disable smart dashes (not useful when writing code)
        NSAutomaticDashSubstitutionEnabled = false;

        # 120, 90, 60, 30, 12, 6, 2
        KeyRepeat = 2;

        # 120, 94, 68, 35, 25, 15
        InitialKeyRepeat = 15;

        "com.apple.mouse.tapBehavior" = 1;
        "com.apple.sound.beep.volume" = 0.0;
        "com.apple.sound.beep.feedback" = 0;
      };


      dock = {
        autohide = false;
        show-recents = false;
        launchanim = true;
        orientation = "bottom";
        tilesize = 45;
      };

      finder = {
        _FXShowPosixPathInTitle = false;
        AppleShowAllFiles = true;
        # Finder - Disable the warning when changing a file extension
        FXEnableExtensionChangeWarning = false;
        # Finder - Allow quitting via COMMAND+Q -- Doing so will also hide desktop icons
        QuitMenuItem = true;
      };

      trackpad = {
        Clicking = true;
        TrackpadThreeFingerDrag = false;
      };

      screensaver = {
        askForPassword = true;
        askForPasswordDelay = 0;
      };
    };


    keyboard = {
      enableKeyMapping = true;
      remapCapsLockToEscape = true;
    };
  };
}
