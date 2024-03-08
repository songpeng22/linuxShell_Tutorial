#!/bin/bash

# test - evaluate expression
test -d . && echo "test:directory exist"
# or
[ -d . ]  && echo "[]:directory exist"
