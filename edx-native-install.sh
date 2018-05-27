#!/bin/sh
# Native Open edX Ubuntu 16.04 64 bit Installation
# This script takes around 2 hours to complete. It is intended to be run unattended, on a background thread using
# nohup.
#---------------------------------------------------------


cd ~

# Prerequisites: ensure that locales are set on your server. if not the ansible boostrap script below will break.
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# 1. Set the OPENEDX_RELEASE variable:
export OPENEDX_RELEASE=open-release/ginkgo.2

# 2. Bootstrap the Ansible installation:
wget https://raw.githubusercontent.com/edx/configuration/$OPENEDX_RELEASE/util/install/ansible-bootstrap.sh -O - | sudo bash

# 3. (Optional) If this is a new installation, randomize the passwords:
wget https://raw.githubusercontent.com/edx/configuration/$OPENEDX_RELEASE/util/install/generate-passwords.sh -O - | bash

# 4. Install Open edX:
wget https://raw.githubusercontent.com/edx/configuration/$OPENEDX_RELEASE/util/install/sandbox.sh -O - | bash > install.out
