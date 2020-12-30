#!/bin/bash

set -e

# replace env-name on the right hand side of this line with the name of your conda environment
ENVNAME=py-data-sci
# if you need the environment directory to be named something other than the environment name, change this line
ENVDIR=$ENVNAME
source activate $ENVNAME

# modify this line to run your desired Python script and any other work you need to do
python3 print_csv.py
