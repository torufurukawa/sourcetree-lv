# Clean remote file path
REMOTE_FILENAME=$1
REMOTE_PATH=$(pwd)/./${REMOTE_FILENAME}
echo ${REMOTE_PATH}
REMOTE_WINPATH=$(cygpath -d "${REMOTE_PATH}")
echo ${REMOTE_WINPATH}

# Clean local file path
LOCAL_PATH=$2
LOCAL_WINPATH=$(cygpath -d "${LOCAL_PATH}")
echo ${LOCAL_WINPATH}

# Run LabVIEW Compare
# $ "C:\Program Files (x86)\National Instruments\Shared\LabVIEW Compare\LVCompare.exe" "C:\Users\Toru Furukawa\Desktop\gitlv2\foo.vi" "C:\Users\TORUFU~1\AppData\Local\Temp\abc_foo.vi"
"C:\Program Files (x86)\National Instruments\Shared\LabVIEW Compare\LVCompare.exe" "${REMOTE_WINPATH}" "${LOCAL_WINPATH}"
