#
# Ux4hack
# Configs fish - CyberMux
#

function fish_prompt

  if not set -q __fish_prompt_hostname
    set -g __fish_prompt_hostname (hostname|cut -d . -f 1)
  end
  if not set -q __fish_prompt_char
    switch (id -u)
      case 0
	set -g __fish_prompt_char '#'
      case '*'
	set -g __fish_prompt_char '❯'
    end
  end

  set -l normal (set_color normal)
set -l red (set_color --bold red)
set -l blue (set_color --bold blue)
  set -l white (set_color white)
  set -g __fish_git_prompt_char_stateseparator ' '
  set -g __fish_git_prompt_color white
  set -g __fish_git_prompt_color_flags red
  set -g __fish_git_prompt_color_prefix red
  set -g __fish_git_prompt_color_suffix red
  set -g __fish_git_prompt_showdirtystate true
  set -g __fish_git_prompt_showuntrackedfiles true
  set -g __fish_git_prompt_showstashstate true
  set -g __fish_git_prompt_show_informative_status true
  
echo -n $red'╭──('$white'Ux4hack'$red'@'$white$__fish_prompt_hostname$red')'$red'-'$red'('$blue(prompt_pwd)$red')'
  echo

  echo -n $red'╰──'$white'❯'$red$__fish_prompt_char $normal
end
