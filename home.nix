{ config, pkgs, __secrets, ... }: {
  home.file.".aws/config".text = __secrets.awsConfig.text;
  home.homeDirectory = "/Users/${__secrets.username}";
  home.packages = with pkgs; [ awscli2 jq nixfmt ];
  home.stateVersion = "22.11";
  home.username = __secrets.username;
  programs.bash.enable = true;
  programs.home-manager.enable = true;
  programs.git = {
    enable = true;
    userEmail = __secrets.email;
    userName = __secrets.name;
  };
}
