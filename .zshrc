# Note that unlike bashrc, zshrc is only sourced in interactive mode. Therefore
# we should ideally set the environment variables in .zprofile, but we hope
# that the OS manufacturer has set those properly in a system wide fashion in
# /etc/zprofile and configure our DEV environment here. Use following for a
# plain old bash with defaultish environment: `env -i HOME="$HOME" bash -l`
# See: https://superuser.com/a/1333539
typeset -U path fpath
export path=(/usr/local/bin $path)
# Respect .zshenv defaults unless we specifically want to alter them
export BROWSER="${BROWSER:=open}"
export EDITOR="${EDITOR:=vim}"
export VISUAL="${EDITOR:=vim}"
export PAGER="${PAGER:=less}"
export HISTFILE="~/.scratch/zhistory"

