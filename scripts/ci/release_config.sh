#!/bin/bash

echo
echo Running release_config.sh...
echo

type=development

if [[ $TRAVIS_TAG == *RC ]]; then
    echo Making a release candidate
else
    echo Making a release
    type=prod
fi

export type; yarn run release