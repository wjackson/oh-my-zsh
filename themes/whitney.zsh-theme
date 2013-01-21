custom_green=$FG[035]
custom_grey=$FG[102]

PROMPT='%{$custom_green%}%B%m%{$custom_grey%}:%c$(custom_git_prompt_info)%{$custom_grey%}%(?..%{$fg_bold[red]%})➤ % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%} git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%}✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[190]%}✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%}✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%}➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%}═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}✭%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_STASHED
#ZSH_THEME_GIT_PROMPT_AHEAD # are there commits ahead on remote
#ZSH_THEME_GIT_PROMPT_BEHIND # are there commits behind on remote
#ZSH_THEME_GIT_PROMPT_DIVERGED

function custom_git_prompt_info() {
    GIT_PROMPT_INFO=$(git_prompt_info)
    GIT_PROMPT_STATUS=$(git_prompt_status)

    [ -z "$GIT_PROMPT_INFO" ] && return

    if [ ! -z "$GIT_PROMPT_STATUS" ]; then
        GIT_PROMPT_STATUS=" $GIT_PROMPT_STATUS"
    fi

    echo "${GIT_PROMPT_INFO}${GIT_PROMPT_STATUS}%{$fg_bold[blue]%})%{$reset_color%}"
}
