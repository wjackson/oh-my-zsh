function EXT_COLOR () { echo -ne "\033[38;5;$1m"; }
custom_green=$(EXT_COLOR 35)
custom_grey=$(EXT_COLOR 102)

PROMPT='%{$custom_green%}%m%{$custom_grey%}:%c%{$fg[blue]%}$(git_prompt_info)%{$fg[blue]%}%{$fg[red]%}%{$custom_grey%}➤ % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
