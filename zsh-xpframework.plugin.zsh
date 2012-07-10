function infinitest() {
  inotifywait -e modify -e move -e create -e delete \
    -r -m src/ etc/ xsl/  | while read line ; do
      unittest unittest.ini
  done
}

function changes() {
  if [ -r ChangeLog ] ; then
    local lines=`grep -n ^Version ChangeLog | awk -F: '{ print $1 }' | head -2 | tail -1`
    head -$((lines-1)) ChangeLog
  fi
}
