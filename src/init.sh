SCRIPT_DIR=${SCRIPT_DIR-"$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"}
source "${SCRIPT_DIR}/config.txt"

# "hoge fuga.vi" => "C:\Users\FOOBAR~1\HOGEFU~1.VI"
function resolve_path () {
  echo $(cygpath -d -a "$1")
}
