# "/c/Foo Bar/hoge fuga.vi" => "C:\Users\FOOBAR~1\HOGEFU~1.VI"
function dospath () {
  echo $(cygpath -d "$1")
}
