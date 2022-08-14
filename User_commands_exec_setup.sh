#!/bin/bash
#
# Note, run this script as root user to create user and limited commands execution setup
#
# 1. User creation and password
useradd -m -d /home/testuser/ testuser
echo 'testuser:test123' | chpasswd
#
# 2. Setting up only 'mkdir and chmod' commands exec via sudo approach: 
echo "testuser ALL=NOPASSWD:/bin/mkdir,/bin/chmod" >> /etc/sudoers
#


