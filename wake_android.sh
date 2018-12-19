#!/bin/sh

cd $1; # $ANDROID_HOME
./emulator/emulator -avd RN_Nexus_5X_API_23_2 > /dev/null 2>&1 &