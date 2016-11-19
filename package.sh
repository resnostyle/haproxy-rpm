#!/bin/bash

#docker run --privileged=true -e MOCK_CONFIG=epel-6-x86_64 -e SOURCES=SOURCES/ -e SPEC_FILE=SPECS/haproxy.spec -v /Users/jbrehm/src/reverb-rpms:/rpmbuild mmornati/mock-rpmbuilder

if [ $# -lt 1 ]; then
  echo "Usage: $0 {epel-7-x86_64|epel-6-x86_64} SPEC"
  exit 0
fi

RELEASE=$1
SPEC_FILE=$2
VOLUME=`pwd`

#docker run --privileged=true -e MOCK_CONFIG=${RELEASE} -e SOURCES=SOURCES/ -e SPEC_FILE=$SPEC_FILE -v $VOLUME:/rpmbuild quay.io/reverbnation/mock-rpmbuilder
