SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/config.txt"
source "${SCRIPT_DIR}/utils.sh"

# "${LabViewShared}/LabVIEW Merge/LVMerge.exe" "${LabViewBin}" "${BASE}" "${REMOTE}" "${LOCAL}" "${MERGED}"

# Clean paths
BASE=$(resolve_path "$1")
REMOTE=$(resolve_path "$2")
LOCAL=$(resolve_path "$3")
MERGED=$(resolve_path "$4")

# Launch LabVIEW merge program
"${MERGE_CMD}" "${LabViewBin}" "${BASE}" "${REMOTE}" "${LOCAL}" "${MERGED}"
