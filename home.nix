{ config, pkgs, ... }:

{
  home.username = "matthias";
  home.homeDirectory = "/home/matthias";
  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [ 
    alacritty
    autojump
    bat
    dmenu
    dnsutils
    eza
    feh
    file
    firefox
    font-awesome
    fzf
    git
    gnumake
    go
    google-chrome
    grim
    hack-font
    htop
    jq
    kanshi
    mako
    mpv
    ncdu
    nerdfonts
    nssTools
    open-sans
    pavucontrol
    pcmanfm
    playerctl
    polkit_gnome
    psmisc
    pulseaudio
    ranger
    silver-searcher
    slurp
    spotify
    sshuttle
    sway-contrib.grimshot
    swayidle
    swaylock
    tig
    tldr
    tmux
    unzip
    whois
    wl-clipboard
    wofi
    #Work
    slack
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
