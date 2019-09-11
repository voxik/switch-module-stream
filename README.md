# switch-module-stream

[![Build Status](https://travis-ci.org/junaruga/switch-module-stream.svg?branch=master)](https://travis-ci.org/junaruga/switch-module-stream)

This repository is to show examples and command level steps to switch a module stream from current stream to new stream.

It's useful to see below points during the processes.

* How some RPM packages depending on one of current stream and new stream work.
* How language packages (gem in Ruby, pip in Python and etc) depending on a stream work.

## Documents

* [Fedora - Switching module streams](https://docs.fedoraproject.org/en-US/modularity/using-modules/#_switching_module_streams)
* [RHEL 8 - 6.5. Switching to a later stream](https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/8/html-single/installing_managing_and_removing_user_space_components/index#switching-to-a-later-stream_managing-versions-of-appstream-content)

## Usage

### How to add your module stream case to CI.

There is a commen Dockerfile `ci/Dockerfile-fedora` using Fedora container image.

Minimal steps to add the case is just to add your case to `.travis.yml`.
If you want to customize, follow below steps.

```
$ mkdir script/$MODULE_NAME
```

Consider to create below script files to test your module in the process to switch the stream. Adding those files is optional.

```
script/$MODULE_NAME/install-deps-root.sh
script/$MODULE_NAME/install-deps-user.sh
script/$MODULE_NAME/prepare-to-test.sh
script/$MODULE_NAME/test.sh
```

If `script/script/$MODULE_NAME-$CUR_STREAM-to-$NEW_STREAM/*.sh` files exist, those are prioritized to run. This feature is to run a script for a specific one case.

If above files are not set, `script/*.sh` files are used if they exist.
