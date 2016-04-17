#!/usr/bin/env bash

source bash_tap_fd.sh

CMD=$(get_script)
TEST="$(get_test_data)/test_profile_firefox_nopassword/"


diff -u <(echo | ${CMD} ${TEST} | grep -C1 doesntexist) <(get_user_data "doesntexist")
diff -u <(echo | ${CMD} ${TEST} | grep -C1 onemore) <(get_user_data "onemore")
diff -u <(echo | ${CMD} ${TEST} | grep -C1 cömplex) <(get_user_data "complex")

# vim: ai sts=4 et sw=4
