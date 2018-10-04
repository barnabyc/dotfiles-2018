# via https://github.com/starcraftman/zsh-git-prompt
GIT_PROMPT_EXECUTABLE="haskell"

source ~/.zsh/antigen-hs/init.zsh

# prompt
PROMPT='%F{green}%n %F{magenta}%~%F{blue} [%f '
RPROMPT='$(git_super_status) %F{blue}] %F{green}%D{%K:%M} %f'

#ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
#ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
#ZSH_THEME_GIT_PROMPT_CLEAN="✔"

# todo: are these all Oh-My-Zsh ??
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"



