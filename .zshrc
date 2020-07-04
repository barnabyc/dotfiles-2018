source ~/.zsh/options
source ~/.zsh/aliases
source ~/.zsh/functions

# via https://github.com/starcraftman/zsh-git-prompt
GIT_PROMPT_EXECUTABLE="haskell"

source ~/.zsh/antigen-hs/init.zsh

# prompt
PROMPT='%F{green}%n %F{magenta}%~%F{blue} [%f '
RPROMPT='$(git_super_status) %F{blue}] %F{green}%D{%K:%M} %f'

# todo: are these all Oh-My-Zsh ??
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

# todo
# https://unix.stackexchange.com/questions/1397/change-prompt-color-depending-on-user-or-root-in-zsh



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Use fd (https://github.com/sharkdp/fd) instead of the default find
# command for listing path candidates.
# - The first argument to the function ($1) is the base path to start traversal
# - See the source code (completion.{bash,zsh}) for the details.
_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi

