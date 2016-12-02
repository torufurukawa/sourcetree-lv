# Default paths
SHARED_DIR="C:\Program Files (x86)\National Instruments\Shared"
LABVIEW_EXE="C:\Program Files (x86)\National Instruments\LabVIEW 2014\LabVIEW.exe"

# Read global config
SCRIPT_DIR=${SCRIPT_DIR-"$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"}
source "${SCRIPT_DIR}/config.txt"

# Read local config
LOCAL_CONFIG="./lvdiffmerge.txt"
if [ -e "${LOCAL_CONFIG}" ]
then
  source "${LOCAL_CONFIG}"
fi

#
# Utilities
#

# "hoge fuga.vi" => "C:\Users\FOOBAR~1\HOGEFU~1.VI"
function resolve_path () {
  echo $(cygpath -d -a "$1")
}

# $(log ...) writes on stderr
function log () {
  echo $* 1>&2
}
