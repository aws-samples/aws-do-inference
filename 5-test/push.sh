#!/bin/bash

######################################################################
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved. #
# SPDX-License-Identifier: MIT-0                                     #
######################################################################

# Push model image to container registry

if [ -f ./config.properties ]; then
    source ./config.properties
elif [ -f ../config.properties ]; then
    source ../config.properties
else
    echo "config.properties not found!"
fi

docker push ${registry}${test_image_name}${test_image_tag}
