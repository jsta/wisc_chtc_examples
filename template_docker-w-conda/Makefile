
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
