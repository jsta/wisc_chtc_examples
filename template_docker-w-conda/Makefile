
.PHONY: setup submit

all: setup

setup: template_docker-w-conda.tar.gz /squid/stachelek/template_docker-w-conda.tar.gz

miniconda: Miniconda3-latest-Linux-x86_64.sh
	sh Miniconda3-latest-Linux-x86_64.sh -b -p ./miniconda	
	export PATH=/home/stachelek/wisc_chtc_examples/template_docker-w-conda/miniconda/bin:$PATH
	conda install -c conda-forge conda-pack

Miniconda3-latest-Linux-x86_64.sh:
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

template_docker-w-conda.tar.gz: environment.yml miniconda
	export PATH=/home/stachelek/wisc_chtc_examples/template_docker-w-conda/miniconda/bin:$PATH
	-conda env create -f $<	
	conda pack -n template_docker-w-conda

/squid/stachelek/template_docker-w-conda.tar.gz:
	cp template_docker-w-conda.tar.gz /squid/stachelek/
	chmod 755 $@

# `docker push template_docker-w-conda:latest`
docker: Dockerfile
	docker build -f $< -t jsta/template_docker-w-conda:latest .

submit:
	condor_submit docker-w-conda.sub

check:
	condor_q

clean:
	-@rm *.err
	-@rm *.log
	-@rm *.out
	-@rm *_stderror
