killf() {
  local pid
  pid=$(ps -ef | sed 1d | fzf -m --reverse | awk '{print $2}')

  if [ "x$pid" != "x" ]
  then
    echo $pid | xargs kill -${1:-9}
  fi
} 
