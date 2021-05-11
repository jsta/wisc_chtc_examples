#!/bin/bash
#
# docker.sh

Rscript -e "print(dplyr::select(read.csv('data.csv'), anumber)[[1]])"
