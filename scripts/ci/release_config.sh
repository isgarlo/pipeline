#!/bin/bash

echo
echo Running release_config.sh...
echo


if [[ $TRAVIS_TAG != *RC ]]; then
    echo Making a release
else
    echo Making a release candidate
fi