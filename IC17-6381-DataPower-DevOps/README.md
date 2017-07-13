# DataPower DevOps

This lab will take you from an `export.zip` through running DataPower for Docker with Jenkins CI and GitLab VCS.

Please follow the instructions in the included PDF file.

In the lab, the virtual machine was simply Ubuntu 14.04 with `docker` and `docker-compose` installed. The lab is written with this in mind, but with small adjustments it can be run on any Docker system.

The video https://www.youtube.com/watch?v=PYkBQU_kWt8 shows how DataPower development and continuous integration can work together -- it uses the CI system set up as part of this lab.

## Erratta:

Common questions during the lab:

### Ensure use of the correct VM

Please check to ensure that the correct VM is running. To do this, issue the command:

`docker images`

If the result is `Command not found`, please ask for help. Or of you are familiar with VMWare, switch back to the NewStartLab snapshot.

### Directory already exists

If the `interconnect-labs` directory is present already. You can either remove it with the 
command `rm -rf interconnect-labs` then use the `git clone` command in the lab or just leave
it in place.

### Issues with copy & paste from the PDF

In the PDF, some of the dash characters (`-`) are incorrect. They look like the dash character but they are not. If you have a problem with a command, and you copied and pasted it from the PDF, please replace the dashes manually.

