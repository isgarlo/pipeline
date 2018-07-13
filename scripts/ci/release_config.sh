#!/bin/bash

echo
echo Running release_config.sh...
echo

type=development

if [[ $TRAVIS_TAG != *RC ]]; then
    type=prod
fi

echo Making a release with $type config ...
export type; yarn run release