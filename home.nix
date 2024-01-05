{ config, pkgs, ... }:

{
  home.username = "matthias";
  home.homeDirectory = "/home/matthias";
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [ 
    polkit_gnome
    grim
    slurp
    go
    feh
    google-chrome
    firefox
    spotify
    pcmanfm
    htop
    tig
    ranger
    autojump
    git
    silver-searcher
    alacritty
    hack-font
    nerdfonts
    font-awesome
    arandr
    psmisc
    eza
    bat
    sshuttle
    fzf
    swaylock
    swayidle
    wl-clipboard
    mako
    dmenu
    tmux
    pavucontrol
    tldr
    playerctl
    pulseaudio
    nssTools
    sway-contrib.grimshot
    kanshi
    zathura
    gnumake
    unzip
    dnsutils
    tmate
    jq
    file
    mpv
    ncdu
    whois
    open-sans
    wofi
  ];
  programs.zsh = {
    enable = true;
    shellAliases = {
      ll = "ls -l";
      ts = "tig status";
      update = "sudo nixos-rebuild switch";
    };
    history = {
      size = 100000000000;
    };
    oh-my-zsh = {
     enable = true;
     plugins = [ "git" "autojump" "vagrant" "docker" ];
     theme = "agnoster";
    };
  };
  programs.neovim.enable = true;
  programs.neovim.viAlias = true;
  programs.neovim.vimAlias = true;
  programs.neovim.vimdiffAlias = true;

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;
}
