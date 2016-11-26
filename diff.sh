SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/config.txt"

# Clean remote file path
REMOTE_FILENAME=$1
REMOTE_PATH=$(pwd)/./${REMOTE_FILENAME}
REMOTE_WINPATH=$(cygpath -d "${REMOTE_PATH}")
echo ${REMOTE_WINPATH}

# Clean local file path
LOCAL_PATH=$2
LOCAL_WINPATH=$(cygpath -d "${LOCAL_PATH}")
echo ${LOCAL_WINPATH}

# Run LabVIEW compare tools
"${DIFF_CMD}" "${REMOTE_WINPATH}" "${LOCAL_WINPATH}"
