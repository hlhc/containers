#!/usr/bin/env bash

APP="${1}"
CHANNEL="${2}"

if test -f "./hlhc/${APP}/ci/latest.sh"; then
    bash ./hlhc/"${APP}"/ci/latest.sh "${CHANNEL}"
fi
