#!env bash

SOURCE_DIR=src
FILENAMES=(
  config.txt
  diff.sh
  utils.sh
)
BUILD_BASE_DIR=build
PACKAGE_NAME=lvdiffmerge
DISTRIBUTION_BASE_DIR=dist


version=$1

# Ensure build dir is empty
build_dir=${BUILD_BASE_DIR}/${PACKAGE_NAME}
rm -rf ${build_dir}
mkdir -p ${build_dir}

# Copy sources to build dir
for filename in ${FILENAMES[@]}; do
  src=${SOURCE_DIR}/${filename}
  dst=${build_dir}/${filename}
  cp ${src} ${dst}
done

# Copy
distribution_dir=${DISTRIBUTION_BASE_DIR}/${PACKAGE_NAME}-${version}
mkdir -p ${distribution_dir}
echo ${distribution_dir}
echo ${build_dir}
cp -r ${build_dir} ${distribution_dir}
