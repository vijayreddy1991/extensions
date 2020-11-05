# Extensions Repo

This is a sample readme.md to check if markdown is working - 

**sampleResource resource type**

run `./build.sh` to build images



## Debugging tips 
1. If git hooks don't appear to work, check rabbitMQ to see if they're queuing up for some reason: :30201/#/queues/pipelinesRoot/core.hookHandler

## Attaching a NodeJS debugger

Any NodeJS debugger can be used.   
1. Run devmode with `./<project_root>/devmode <service_name> --debugger` e.g. `./devmode api --debugger`
2. Attach debugger to `<service_host>:9229`, e.g. with node-inspect `node-inspect 192.168.50.1:9229`
