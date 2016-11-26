# "hoge fuga.vi" => "C:\Users\FOOBAR~1\HOGEFU~1.VI"
function resolve_path () {
  echo $(cygpath -d -a "$1")
}
