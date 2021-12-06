FILE=/tmp/NeofetchCached.tmp

file_age() {
    local filename=$1
    echo $(( $(date +%s) - $(date -r $filename +%s) ))
}

is_stale() {
    local filename=$1
    local max_minutes=30
    [ $(file_age $filename) -gt $(( $max_minutes*60 )) ]
}


if [ -f "$FILE" ]; then
    if is_stale $FILE; then
      neofetch > /tmp/NeofetchCached.tmp
      cat /tmp/NeofetchCached.tmp;
    else
      cat /tmp/NeofetchCached.tmp;
  fi
  else
    neofetch > /tmp/NeofetchCached.tmp
    cat /tmp/NeofetchCached.tmp;
fi
