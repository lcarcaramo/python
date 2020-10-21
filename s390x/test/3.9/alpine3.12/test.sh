#!/bin/bash

set -e

export ANSI_YELLOW="\e[1;33m"
export ANSI_GREEN="\e[32m"
export ANSI_RESET="\e[0m"

echo -e "\n $ANSI_YELLOW *** FUNCTIONAL TEST(S) *** $ANSI_RESET \n"

echo -e "$ANSI_YELLOW It can run a Python program: $ANSI_RESET"
docker build -t test/run-app/quay.io/ibmz/python runs-python-programs
docker run --rm --name runs-python-programs test/run-app/quay.io/ibmz/python
docker rmi test/run-app/quay.io/ibmz/python

echo -e "\n $ANSI_GREEN *** FUNCTIONAL TEST(S) COMPLETED SUCESSFULLY *** $ANSI_RESET \n"
