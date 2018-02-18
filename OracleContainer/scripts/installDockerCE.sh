#!/bin/bash
# LICENSE UPL 1.0
#
# Copyright (c) 1982-2016 Oracle and/or its affiliates. All rights reserved.
#
# Since: February, 2018
# Author: adrian.png@fuzziebrain
# Description: Installs the latest version of Docker CE from the Oracle Yum repositories.
#
# DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.
#

sudo yum install -y yum-utils

sudo yum-config-manager --enable ol7_latest
sudo yum-config-manager --enable ol7_UEKR4
sudo yum-config-manager --enable ol7_addons

sudo yum install -y docker-engine

# Allow vagrant user to work with Docker
sudo usermod -aG docker vagrant

sudo systemctl enable docker
sudo systemctl start docker