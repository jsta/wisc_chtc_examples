#!/bin/bash

set -e

# replace env-name on the right hand side of this line with the name of your conda environment
ENVNAME=py-data-sci
# if you need the environment directory to be named something other than the environment name, change this line
ENVDIR=$ENVNAME

# modify this line to run your desired Python script and any other work you need to do
conda run -n $ENVNAME python3 hello.py
