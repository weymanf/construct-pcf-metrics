dir=$(cd $(dirname $0); pwd)

INSTALL_PATH='/usr/local/bin'
BINARY_NAME='curl-timings'

cp $dir/${BINARY_NAME}.sh ${INSTALL_PATH}/${BINARY_NAME}
chmod +x ${INSTALL_PATH}/${BINARY_NAME}
