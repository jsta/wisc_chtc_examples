
docker: Dockerfile
	docker build -f $< -t jsta/example_docker:latest .

submit:
	condor_submit docker.sub

check:
	condor_q

clean:
	-@rm *.err
	-@rm *.log
	-@rm *.out