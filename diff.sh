SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/config.txt"
source "${SCRIPT_DIR}/utils.sh"

# Clean remote file path
REMOTE_PATH=$1
REMOTE_WINPATH=$(resolve_path "${REMOTE_PATH}")

# Clean local file path
LOCAL_PATH=$2
LOCAL_WINPATH=$(resolve_path "${LOCAL_PATH}")

# Launch LabVIEW diff program
"${DIFF_CMD}" "${REMOTE_WINPATH}" "${LOCAL_WINPATH}"
