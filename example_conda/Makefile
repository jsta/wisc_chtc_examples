.PHONY: miniconda

setup: example_env

miniconda: Miniconda3-latest-Linux-x86_64.sh
	sh Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda
	conda install -c conda-forge conda-pack

Miniconda3-latest-Linux-x86_64.sh:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

example_env: environment.yml miniconda
	conda env create -f $<

