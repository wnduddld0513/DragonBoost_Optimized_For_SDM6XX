# Don't modify anything after this

if [[ -f "$INFO" ]]; then
  while read -r LINE; do
    if [[ "$(echo -n "$LINE" | tail -c 1)" == "~" ]]; then
      continue
    elif [[ -f "$LINE~" ]]; then
      mv -f "$LINE~" "$LINE"
    else
      rm -f "$LINE"
      while true; do
        LINE=$(dirname "$LINE")
        if [[ "$(ls -A "$LINE" 2>/dev/null)" ]]; then
          break
        else
          rm -rf "$LINE"
        fi
      done
    fi
  done < "$INFO"
  rm -f "$INFO"
fi