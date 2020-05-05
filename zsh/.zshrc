# oh-my-zsh start
export ZSH=/home/joseph/.oh-my-zsh

ZSH_THEME="lambda"
plugins=(docker-compose git)

path=("$HOME/bin" "$path[@]")

source $ZSH/oh-my-zsh.sh
# oh-my-zsh end

# keys start
eval `keychain --eval id_ed25519 id_ed25519_speedcurve id_rsa id_rsa_speedcurve`
export GPG_TTY=$(tty)
# keys end

# version management start
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

source /usr/local/share/chruby/chruby.sh
chruby 2.6

echo "node $(node -v)"
ruby -v
# version management end

# aliases start
alias reload!='source ~/.zshrc'
alias rm='rm -v'
alias ifconfig='ip -c a'
alias sc="$HOME/dev/speedcurve/speedcurve.com"
alias scc="$HOME/dev/speedcurve/speedcurve.com/common"
alias scrun="$HOME/dev/speedcurve/speedcurve-run"
alias scapi="$HOME/dev/speedcurve/speedcurve-api"
# aliases end

# misc. environment variables start
export SPEEDCURVE_API_KEY=xxx
# misc. environment variables end

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
