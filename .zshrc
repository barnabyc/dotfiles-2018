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

