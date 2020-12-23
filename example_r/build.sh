tar -xzf R402.tar.gz
export PATH=$PWD/R/bin:$PATH
export RHOME=$PWD/R

mkdir packages
export R_LIBS=$PWD/packages

Rscript -e 'install.packages("poorman")'

tar -czf packages.tar.gz packages/
