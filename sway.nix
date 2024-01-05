# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true; # so that gtk works properly
  };
  #environment.loginShellInit = ''
  #  if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
  #    exec sway
  #  fi
  #'';
 # Enable sound with pipewire.
  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #media-session.enable = true;
  };
  #xdg = {
  #portal = {
  #  enable = true;
  #  extraPortals = with pkgs; [
  #    xdg-desktop-portal-gtk
  #    xdg-desktop-portal-wlr
  #  ];
  #  gtkUsePortal = true;
  #  };
  #};
}
