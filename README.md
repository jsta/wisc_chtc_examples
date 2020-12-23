## Worked examples and templates Wisconsin CHTC

### Submit file

Every CHTC job has a "submit" file which specifies some boilerplate settings as well as:

1. The path to an `executable` shell script

2. The paths to one or more files (`transfer_input_files`) to transfer to the job server

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


