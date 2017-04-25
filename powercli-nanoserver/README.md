# powercli-windowsservercore
Docker image running popular PowerShell modules & Scripts from VMware, as well as the VMware community.

![](https://github.com/vScripter/windows-docker-files/blob/master/powercli-windowsservercore/docker-powercli-windowsservercore.png)

## Image Summary
### Modules

| Module Name | Source |
|:----|:----|
| PowerCLI | PowerShell Gallery |
| powervro | PowerShell Gallery |
| powervra | PowerShell Gallery |
| powernsx | github.com/vmware/powernsx/#master |

### Scripts
* Everything available in the [PowerCLI Example Scripts](https://github.com/vmware/PowerCLI-Example-Scripts) repository is available in a PSDrive `P:\`, which is mapped when the PSProfile is loaded.


## Pull
You can pull the image down from [Docker Hub](https://hub.docker.com/r/vscripter/powercli-windowsservercore/) by running:

`docker pull vscripter/powercli-windowsservercore`

## Build
You can use this dockerfile to build the image from scratch, if you prefer that route over pulling it down.

* Change directories to where you save the dockerfile to and run:

  `docker build -t powercli-windowsservercore .`
* If you have the `git` binary available in your `PATH`, you can build directly from this repo:

  `docker build github.com/vScripter/windows-docker-files/powercli-windowsservercore`

## Run
Basic summary of switches used in the examples, below:
* `--rm` - Automatically remove the container when it exits
* `-i` - Interactive; Keep STDIN open even if not attached
* `-t` - tty; Allocate a pseudo-TTY
* `-d` - Detach; Run container in background and print container ID
* `-v` - Bind mount a volume
* `--name` - Set a name for the container

Start a container, interactively, and remove the container once exited.

`docker run --rm -it --name psvmw vscripter/powercli-windowsservercore`

Start a container, run it in the background, name it `psvmw` map the local directory `c:\src` to the container directory `c:\src` and remove the container, once it is stopped.

`docker run --rm -dt -v "c:\src:c:\src" vscripter/powercli-windowsservercore`

Run a PowerShell command in a container named `psvmw`, that is running in the background:

`docker exec psvmw powershell Get-ChileItem -Path c:\src`

Stop a container named `psvmw` that is running in the background

`docker stop psvmw`

If you have the `Docker` PowerShell module installed on your local machine, you can enter a PSSession to a running container (`psvmw`) by running:

`Enter-PSSession -ContainerId (Get-Container -Name psvmw).ID`

