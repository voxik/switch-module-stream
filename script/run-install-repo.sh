#!/bin/bash -ex

if [ "${YUM_REPO_URL}" != "" ]; then
    yum -y install wget
    file_name=$(basename "${YUM_REPO_URL}")
    wget -O "/etc/yum.repos.d/${file_name}" "${YUM_REPO_URL}"
fi
