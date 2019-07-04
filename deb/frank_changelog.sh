#!/bin/bash

DISTRO=`dpkg-parsechangelog | grep "^Distribution" | sed -e "s/^Distribution: //"`
CURVER=`dpkg-parsechangelog | grep "^Version" | sed -e "s/^Version: //"`
DEBFULLNAME="Frank IT" DEBEMAIL=it@frank.nl dch \
    -v "${CURVER}.frank1" \
    --distribution=${DISTRO} \
    --force-distribution \
    "Custom Frank b.v. release"
