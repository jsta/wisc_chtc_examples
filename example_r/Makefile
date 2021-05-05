
build: packages.tar.gz

packages.tar.gz:
	condor_submit -i build.sub

submit:
	condor_submit run.sub

check:
	condor_q

clean:
	-@rm *.err
	-@rm *.log
	-@rm *.out
	