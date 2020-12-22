
setup: example_env

miniconda: Miniconda3-latest-Linux-x86_64.sh
	sh Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda	
	./miniconda/bin/conda install -c conda-forge conda-pack

Miniconda3-latest-Linux-x86_64.sh:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

example_env: environment.yml miniconda
	./miniconda/bin/conda env create -f $<

