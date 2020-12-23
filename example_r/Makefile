
build: packages.tar.gz

packages.tar.gz:
	condor_submit -i build.sub

run:
	condor_submit run.sub

check:
	condor_q