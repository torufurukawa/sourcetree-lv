SCRIPT_DIR=${SCRIPT_DIR-"$(cd "$(dirname "${BASH_SOURCE:-$0}")"; pwd)"}
source "${SCRIPT_DIR}/config.txt"

# read local config
LOCAL_CONFIG="$(pwd)/lvdiffmerge.txt"
if [ -e "${LOCAL_CONFIG}" ]
then
	source "${LOCAL_CONFIG}"
fi

# "hoge fuga.vi" => "C:\Users\FOOBAR~1\HOGEFU~1.VI"
function resolve_path () {
  echo $(cygpath -d -a "$1")
}

function get_32bit_labview_cmd () {
  echo "/c/Program Files/National Instruments/LabVIEW $1/LabVIEW.exe"
}

function get_64bit_labview_cmd () {
  echo "/c/Program Files (x86)/National Instruments/LabVIEW $1/LabVIEW.exe"
}

# find_labview => "C:/path/to/labview.exe"
function find_labview () {
  if [ -n "${LABVIEW_CMD-}" ]; then
    echo "${LABVIEW_CMD}"
    return
  fi

  if [ -n "${LABVIEW_VERSION-}" ]; then
    cmd=$(get_32bit_labview_cmd ${LABVIEW_VERSION})
    if [ -x "${cmd}" ]; then
				echo ${cmd}
        return
    fi

    cmd=$(get_64bit_labview_cmd ${LABVIEW_VERSION})
    if [ -x "${cmd}" ]; then
      echo ${cmd}
      return
    fi
  fi
}
