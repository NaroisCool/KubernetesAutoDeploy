[TOC]

# One Command Delopy Docker private registry



## Before start

 It gives two ways to deploy Docker private registry。



Feathures：

* One command to delpoy private registry
* Add`insecure-registries` Docker parameters manually.
* Use Aliyun registry



Limits：

* Only support HTTP, but HTTPS.
* Please choose one way to do,otherwise you need to remove the images manually.



> Run `chmod u+x *.sh`
>
> Run `./test_docker_registry.sh` check if successed



## Two ways

#Docker Run

Run `./create_docker_registry.sh` 


# Docker Compose

Run `./create_docker_registry_compose.sh` 


## Suggestion
Harbor


