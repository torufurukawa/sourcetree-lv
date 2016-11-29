SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"
source "${SCRIPT_DIR}/config.txt"
source "${SCRIPT_DIR}/utils.sh"

echo $1:$2:$3:$4:$5:$6:$7:$8 > ../../hoge.txt
