{ pkgs, ... }:
{
  home.username = "costa";
  home.homeDirectory = "/home/costa";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    hello
    git
    jq
    tmux
    neovim
    fzf
    ripgrep
    fd
    lazygit
    bat
    eza
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      rebuild = "$HOME/.dotfiles/rebuild.sh";
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
    };
  };
}
