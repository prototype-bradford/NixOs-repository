{ config, pkgs, ... }:

{
  users.users.stark = {
    isNormalUser = true;
    description = "Stark";
    shell = pkgs.zsh;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    #  thunderbird
    ];
  };
}
