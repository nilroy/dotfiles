rvm="%{$fg[green]%}[$(rbenv version | sed -e 's/ (set.*$//')]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}⭠%{$reset_color%}%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}⭠"

PROMPT='${rvm} %{$fg[magenta]%}[%0~] $(git_prompt_info)%{$reset_color%}» '
