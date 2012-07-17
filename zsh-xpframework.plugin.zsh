function infinitest() {
  local directories
  [[ -d src/ ]] && directories+=('src/')
  [[ -d etc/ ]] && directories+=('etc/')
  [[ -d xsl/ ]] && directories+=('xsl/')

  inotifywait -e modify -e move -e create -e delete \
    -r -m $directories | while read line ; do
      unittest unittest.ini
  done
}

function changes() {
  if [ -r ChangeLog ] ; then
    local lines=`grep -n ^Version ChangeLog | awk -F: '{ print $1 }' | head -2 | tail -1`
    head -$((lines-1)) ChangeLog
  fi
}
