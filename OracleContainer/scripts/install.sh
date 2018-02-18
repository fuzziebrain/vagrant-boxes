#!/bin/bash
#
# LICENSE UPL 1.0
#
# Copyright (c) 1982-2018 Oracle and/or its affiliates. All rights reserved.
#
# Since: February, 2018
# Author: Adrian Png
# Description:
#   - Based on /OracleLinux/scripts/install.sh
#   - Updates Oracle Linux to the latest version
#
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
#

echo 'INSTALLER: Started up'

# get up to date
yum upgrade -y

echo 'INSTALLER: System updated'

# fix locale warning
yum reinstall -y glibc-common
echo LANG=en_US.utf-8 >> /etc/environment
echo LC_ALL=en_US.utf-8 >> /etc/environment

echo 'INSTALLER: Locale set'

# Install Docker
echo 'INSTALLER: Docker'
/vagrant/scripts/installDockerCE.sh

# Docker Install End

echo 'INSTALLER: Installation complete, Oracle Linux ready to use!'
