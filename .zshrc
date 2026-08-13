# Add deno completions to search path
if [[ ":$FPATH:" != *":/home/phoenix/.zsh/completions:"* ]]; then export FPATH="/home/phoenix/.zsh/completions:$FPATH"; fi
# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh
export PATH=$HOME/.local/bin:$PATH
# bun completions
[ -s "/home/phoenix/.bun/_bun" ] && source "/home/phoenix/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/home/phoenix/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
export CLAUDE_CODE_EFFORT_LEVEL=MAX

. "$HOME/.local/share/../bin/env"
. "/home/phoenix/.deno/env"
export PATH=$PATH:/usr/local/go/bin

# >>> grok installer >>>
export PATH="$HOME/.grok/bin:$PATH"
fpath=(~/.grok/completions/zsh $fpath)
autoload -Uz compinit && compinit -C
# <<< grok installer <<<
