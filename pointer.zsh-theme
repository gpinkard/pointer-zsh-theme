# zsh theme by Gabriel Pinkard

local branch='$(git_prompt_info)%{$reset_color%}'
local dir='%{$fg_bold[blue]%}%{$reset_color%}[ %~%  ]%{$fg_bold[blue]%}'
local return='
%(?:%{$fg_bold[green]%}-> :%{$fg_bold[red]%}-> )%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%} ::%{$fg_bold[yellow]%} on  "
# ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%} ::%{$fg_bold[yellow]%} on branch "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} %{$fg[red]%}✗ "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%} %{$fg[green]%}✔ " 

PROMPT="${dir}${branch}${return}"