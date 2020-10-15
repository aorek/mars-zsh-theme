# Colors
local dir_color=cyan
local separator_color=172
local git_branch_color=010

function get_static_prompt () {
  echo "%{$fg[${dir_color}]%}%1/%f %{$FG[${separator_color}]%}❯%f "
}

function get_prompt () {
  echo $(get_static_prompt)
}

PROMPT=$(get_prompt)

preexec()
{
  echo -ne "\e[0m"
}
