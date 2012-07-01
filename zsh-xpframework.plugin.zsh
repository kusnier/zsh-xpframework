function infinitest() {
  inotifywait -e modify -e move -e create -e delete \
    -r -m src/ etc/ xsl/  | while read line ; do
      unittest -l xp.unittest.XTermTitleListener - unittest.ini
  done
}
