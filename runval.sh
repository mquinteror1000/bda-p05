#!/bin/sh
. /etc/profile.d/99-custom-env.sh

sh svg-05-main-enc.sh 2>&1 | tee p05-output.txt
