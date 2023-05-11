{ config, pkgs, __secrets, ... }: {
  home.username = __secrets.username;
  home.homeDirectory = "/Users/${__secrets.username}";
  home.stateVersion = "22.11";
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userName = __secrets.name;
    userEmail = __secrets.email;
  };
}
