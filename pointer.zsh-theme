# zsh theme by Gabriel Pinkard

local branch='$(git_prompt_info)%{$reset_color%}$(git_prompt_status)%{$reset_color%}'
local dir='%{$fg_bold[blue]%}<%{$reset_color%}%~% %{$fg_bold[blue]%}>%{$reset_color%}'
local return='%(?:%{$fg_bold[white]%} -->:%{$fg_bold[red]%} -->)%{$reset_color%}'
local user='%{$fg_bold[blue]%}<%{$reset_color%}%{$fg[white]%}%n%{$reset_color%}%{$fg[blue]%}@%{$reset_color%}%{$fg[white]%}%m%{$reset_color%}%{$fg_bold[blue]%}>%{$reset_color%}'

# need to add $(git_prompt_status to branch, or its own local for other git stuff)

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}::%{$fg_bold[yellow]%} <on  "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}> %{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}> %{$fg[green]%}✔" 
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}✚ "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[red]%}● "
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[green]%}● "


PROMPT="${return}%{$reset_color%} ${dir}%{$reset_color%} ${branch}%{$reset_color%}"
RPROMPT="${user}"
