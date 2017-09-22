#!/bin/bash

DISTRO=$(dpkg-parsechangelog --show-field Distribution)
CURVER=$(dpkg-parsechangelog --show-field Version)
DEBFULLNAME="Frank IT" DEBEMAIL=it@frank.nl dch \
    -v "${CURVER}.frank1" \
    --distribution=${DISTRO} \
    --force-distribution \
    "Custom Frank b.v. release"
