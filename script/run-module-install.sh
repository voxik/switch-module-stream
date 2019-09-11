#!/bin/bash -ex

if [ "${MODULE_PROFILE}" = "" ]; then
    yum -y module install "${MODULE_NAME}:${CUR_STREAM}"
else
    yum -y module install "${MODULE_NAME}:${CUR_STREAM}/${MODULE_PROFILE}"
fi
