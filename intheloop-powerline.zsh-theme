# fork of https://github.com/robbyrussell/oh-my-zsh/blob/master/themes/intheloop.zsh-theme
# A multiline prompt with username, hostname, full path, return status, git branch, git dirty status, git remote status
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}"
local host_color="green"
if [ -n "$SSH_CLIENT" ]; then
	local host_color="red"
fi
PROMPT='
${SECTION_A}${SECTION_B}${SECTION_C}$(git_prompt_info)$(git_remote_status)${SECTION_END}
%{$fg_bold[cyan]%}%{$reset_color%} '
RPROMPT='${return_status}%{$reset_color%}'

SEC_SEP=$'\ue0b0'

SECTION_A="%K{green}%{$fg[grey]%}%n@%m%F{green}"
SECTION_B="%K{blue}${SEC_SEP}%F{grey} %13c %F{blue}"
SECTION_C=""

SECTION_END="%K{grey}${SEC_SEP}"

ZSH_THEME_GIT_PROMPT_PREFIX="%K{red}${SEC_SEP}%F{black} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{red}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$fg_no_bold[red]%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$fg_no_bold[red]%}"
