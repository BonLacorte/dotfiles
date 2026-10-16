{ config, pkgs, ... }:
{
  home.username = "costa";
  home.homeDirectory = "/home/costa";
  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  xdg.configFile."nvim".source =
  config.lib.file.mkOutOfStoreSymlink
    "${config.home.homeDirectory}/.dotfiles/home/nvim";

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
    nodejs_24
  ];

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initContent = ''
      bindkey '^f' autosuggest-accept
    '';
    shellAliases = {
      ll = "ls -lah";
      gs = "git status";
      rebuild = "$HOME/.dotfiles/rebuild.sh";
      ".." = "cd ..";
      add = "git add .";
      push = "git push";
      pull = "git pull";
      m = "git switch main";
      co = "codex --full-auto"; 
    };
  };

  programs.git = {
    enable = true;    

    settings = {
      user = {
        name = "bonlacorte";
        email = "lacorteflorencebon@gmail.com";
      };
    };
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      format = "$directory$git_branch$git_status$cmd_duration$line_break$character";
      character = {
	success_symbol = "[>](purple)";
        error_symbol = "[>](red)";
      };
      cmd_duration.format = "[$duration]($style) ";
    };
  };
}
