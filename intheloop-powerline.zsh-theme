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



SEC_A_FG="grey"
SEC_A_BG="green"
SECTION_A="%K{${SEC_A_BG}}%{$fg[${SEC_A_FG}]%}%n@%m%{$reset_color%}%F{${SEC_A_BG}}"

SEC_B_FG="white"
SEC_B_BG="blue"
SECTION_B="%K{${SEC_B_BG}}${SEC_SEP}%{$fg[${SEC_B_FG}]%} %13c %{$reset_color%}%F{${SEC_B_BG}}"

SEC_C_FG="green"
SEC_C_BG="black"
SECTION_C=""

SEC_GIT_FG="black"
SEC_GIT_BG="red"

SECTION_END="%K{grey}${SEC_SEP}"

ZSH_THEME_GIT_PROMPT_PREFIX="%K{${SEC_GIT_BG}}${SEC_SEP}%F{${SEC_GIT_FG}} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%F{${SEC_GIT_BG}} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%}↓%{$reset_color%}%K{${SEC_GIT_BG}}%F{${SEC_GIT_BG}} "
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%}↑%{$reset_color%}%K{${SEC_GIT_BG}}%F{${SEC_GIT_BG}} "
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%}↕%{$reset_color%}%K{${SEC_GIT_BG}}%F{${SEC_GIT_BG}} "
