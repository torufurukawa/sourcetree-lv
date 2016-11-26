SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/config.txt"


function dospath () {
  echo $(cygpath -d "$1")
}

# Clean remote file path
REMOTE_FILENAME=$1
REMOTE_PATH=$(pwd)/./${REMOTE_FILENAME}
REMOTE_WINPATH=$(dospath "${REMOTE_PATH}")

# Clean local file path
LOCAL_PATH=$2
LOCAL_WINPATH=$(dospath "${LOCAL_PATH}")

# Launch LabVIEW diff program
"${DIFF_CMD}" "${REMOTE_WINPATH}" "${LOCAL_WINPATH}"
