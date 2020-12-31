## Worked examples and templates for the Wisconsin CHTC

### Submit file

Every CHTC job has a "submit" file which specifies 1) The path to an `executable` shell script and 2) the paths to one or more `transfer_input_files` to transfer to the job server.

<details>
<summary>Submit file template</summary>

```
# template.sub
# starter submit file for CHTC jobs

universe = vanilla
log = job_$(Cluster).log
error = job_$(Cluster)_$(Process).err
output = job_$(Cluster)_$(Process).out

executable = 
arguments = 

should_transfer_files = YES
when_to_transfer_output = ON_EXIT
transfer_input_files = 

request_cpus = 1
request_memory = 1GB
request_disk = 1GB

queue 1
```

</details>

### Executable shell script

Every CHTC job has an executable shell script that optionally sets up job files/environments and runs commands/scripts.

<details>
<summary>Shell script template</summary>

```
#!/bin/bash

# setup job files/environments
tar -xzf jobfiles.tar.gz

# run an R/python/other script
python jobscript.py
```

</details>

## Cheatsheet

Run an interactive job with: `condor_submit -i sub_file`

Transfer files using `scp`: 

```shell
scp file username@hostname:/home/username
scp username@hostname:/home/username/file ./
```

## Links

https://chtc.cs.wisc.edu/

https://github.com/CHTC/chtc-website-source

https://chtc.cs.wisc.edu/file-avail-squid
