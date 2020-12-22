
setup: py-data-sci.tar.gz

miniconda: Miniconda3-latest-Linux-x86_64.sh
	sh Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda	
	export PATH=/home/stachelek/wisc_chtc_examples/example_conda/miniconda/bin:$PATH
	conda install -c conda-forge conda-pack

Miniconda3-latest-Linux-x86_64.sh:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

py-data-sci.tar.gz: environment.yml miniconda
	export PATH=/home/stachelek/wisc_chtc_examples/example_conda/miniconda/bin:$PATH
	conda env create -f $<	
	conda pack -n py-data-sci


