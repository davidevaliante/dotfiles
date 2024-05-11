export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/bin"
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/davide/.local/bin

# Zsh Autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt SHARE_HISTORY


alias terraform=terraform-command

# exports
export GIT_EDITOR=nvim

# [GIT ALIASES]
# Alias for `gaa` to add all files
alias gaa='git add .'

# Alias for `gac` to add all files and prompt for commit message
alias gac='git add . && echo -n "Commit msg: " && read msg && git commit -m "$msg"'

# pnpm
export PNPM_HOME="/home/davide/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Zoxide completion
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
