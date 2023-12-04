{ user, config, pkgs, ... }:

let
  xdg_configHome = "${config.users.users.${user}.home}/.config";
  xdg_dataHome   = "${config.users.users.${user}.home}/.local/share";
  xdg_stateHome  = "${config.users.users.${user}.home}/.local/state"; in
{

  # Setup downloads folders
  "${config.users.users.${user}.home}/Downloads/One-Use/blank-file" = {
    text = "";
  };
  "${config.users.users.${user}.home}/Downloads/Useful/blank-file" = {
    text = "";
  };
}
