SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/init.sh"

# Clean paths
BASE=$(resolve_path "$1")
REMOTE=$(resolve_path "$2")
LOCAL=$(resolve_path "$3")
MERGED=$(resolve_path "$4")

# Launch LabVIEW merge program
labview_cmd=$(find_labview)
"${SHARED_DIR}/LabVIEW Merge/LVMerge.exe" "${LABVIEW_EXE}" "${BASE}" "${REMOTE}" "${LOCAL}" "${MERGED}"
