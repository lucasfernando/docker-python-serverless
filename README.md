# Docker-python-serverless (docker-python-serverless-terragrunt on dockerhub)

Found on Github @ [lucasfernando/docker-python-serverless-terragrunt](https://github.com/lucasfernando/docker-python-serverless)

[![Dockerhub badge](http://dockeri.co/image/lucasfernando/docker-python-serverless-terragrunt)](https://hub.docker.com/r/lucasfernando/docker-python-serverless-terragrunt)

Docker-powered build/deployment environment for Python-based Serverless projects. This Docker image is intended for use with [Bitbucket Pipelines](https://bitbucket.org/product/features/pipelines) and [AWS CodeBuild](https://aws.amazon.com/codebuild).

This image is based on the official [amazonlinux](https://hub.docker.com/_/amazonlinux/) from AWS and has the following pre-installed for you: 
 - AWS CLI, 
 - Serverless v1.24.1 and 
 - Python 2.7.16
 - Python 3.7.6
 - pip 20.0.2
 - pipenv, version 2018.11.26
 - nodejs v10.19.0
 - npm 6.13.4
 - Terraform v0.12.24
 - terragrunt version v0.23.2

It includes make and g++ which is necessary for compiling native Python modules.