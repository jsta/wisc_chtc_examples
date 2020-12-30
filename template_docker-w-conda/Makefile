
# `docker login`
dockerimage:
	docker build .

submit:
	condor_submit docker-w-conda.sub

check:
	condor_q

clean:
	-@rm *.err
	-@rm *.log
	-@rm *.out
	-@rm *_stderror
