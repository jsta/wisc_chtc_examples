
# `docker login`
dockerimage:
	docker build -t jsta/template_docker-w-conda:latest .
	docker push jsta/template_docker-w-conda:latest

submit:
	condor_submit docker-w-conda_chtcrun.sub

check:
	condor_q

clean:
	-@rm *.err
	-@rm *.log
	-@rm *.out
	-@rm *_stderror
