#!/bin/bash
#
# docker.sh

Rscript -e "print(dplyr::select(mtcars, cyl)[[1]])"
