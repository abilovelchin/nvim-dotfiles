if status is-interactive
    # Commands to run in interactive sessions can go here

    export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
    export PATH="/usr/local/opt/php@7.3/bin:$PATH"
    export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

    alias bash="nvim ~/.config/fish/config.fish"
    alias hosts="nvim /private/etc/hosts"
    alias vhosts="nvim /usr/local/etc/httpd/extra/httpd-vhosts.conf"
    alias httpd="open /usr/local/etc/httpd"
    alias www="cd /usr/local/var/www"
    alias apps="cd /Applications/apps"
    alias cert="cd /Applications/certification"
    alias py="cd /Applications/python"
    alias restarthttpd="brew services stop httpd && brew services start httpd"
    alias vpn="~/dev_sh/itmimVpn.sh"
    alias itmim="~/dev_sh/itmimVpn.sh connect \"ITMIM\""
    alias cls=clear
    alias vim=nvim
    
    set fish_greeting ""

    # set -gx TERM xterm-256color

# theme
  # set -g theme_color_scheme terminal-dark
  # set -g fish_prompt_pwd_dir_length 1
  # set -g theme_display_user yes
  # set -g theme_hide_hostname no
  # set -g theme_hostname always

# aliases
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"
alias g git
  # command -qv nvim && alias vim nvim

  # set -gx EDITOR nvim

  # set -gx PATH bin $PATH
  # set -gx PATH ~/bin $PATH
  # set -gx PATH ~/.local/bin $PATH

# NodeJS
  # set -gx PATH node_modules/.bin $PATH

# Go
  # set -g GOPATH $HOME/go
  # set -gx PATH $GOPATH/bin $PATH

    function deploy
      lftp -c "set ftp:ssl-allow no; open -u root,Azerikurtlari1 161.97.90.3; mirror -Rnev $argv[1] $argv[2] --ignore-time --parallel=20 -x .git/ -x packages/ -x vendor/ -x node_modules/ -x android/ -x ios/ -x storage/ -x tests/ -x bootstrap/ -x composer.json -x package.json -X package-lock.json -X artisan -x webpack.mix.js -X \.* -X *.lock -X *.xml -X *.md -X *.yml"
    end

    function connect
      ssh $argv@161.97.90.3
    end

    function lumen
       composer create-project --prefer-dist laravel/lumen $argv
    end

    function deploy_nebatat
      lftp -c "set ftp:ssl-allow no; open -u codemaster@bakubotanicalgarden.az,e15935700! 192.185.34.173; mirror -Rnev $argv[1] $argv[2] --ignore-time --parallel=20 -x .git/ -x packages/ -x vendor/ -x node_modules/ -x android/ -x ios/ -x storage/ -x tests/ -x bootstrap/ -x composer.json -x package.json -X package-lock.json -X artisan -x webpack.mix.js -X \.* -X *.lock -X *.xml -X *.md -X *.yml"
    end
end


