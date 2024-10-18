PROMPT="%{$fg_bold[blue]%}[%D{%K:%M:%S}]%{$reset_color%} "
PROMPT+='%{$fg_bold[magenta]%}%n%{$reset_color%} %{$fg_bold[cyan]%}%~%{$reset_color%} '
PROMPT+='$(git_prompt_info)'
PROMPT+='%{$fg_bold[green]%}➜%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}%1{✗%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}%1{✔%}"
