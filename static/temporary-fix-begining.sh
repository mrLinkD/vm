#!/bin/bash

# T&M Hansson IT AB © - 2021, https://www.hanssonit.se/

true
SCRIPT_NAME="Temporary Fix"
# shellcheck source=lib.sh
source /var/scripts/fetch_lib.sh || source <(curl -sL https://raw.githubusercontent.com/nextcloud/vm/master/lib.sh)

# Check for errors + debug code and abort if something isn't right
# 1 = ON
# 0 = OFF
DEBUG=0
debug_mode

# Must be root
root_check

# Fix calendar being broken (cannot delete user)
# git_apply_patch 3795 calendar 23.0.0

# cd $NC_APPS_PATH/calendar
# git apply /tmp/3795.patch

nextcloud_occ app:update --all

exit
