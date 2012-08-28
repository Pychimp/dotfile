PROMPT='%{$fg[green]%}[%*]%  %{$fg[cyan]%}%m in %{$fg[yellow]%}${PWD/$HOME/~}%  %{$reset_color%}$(git_prompt_info)%

%{$reset_color%}→ '

function git_prompt_info () {
    local cb=$(current_branch)
    if [ -n "$cb" ]; then
        echo "$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
    fi
}

ZSH_THEME_GIT_PROMPT_PREFIX="on git:"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red] ●"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green] ●"
