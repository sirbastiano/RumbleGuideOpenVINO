# RumbleGuideOpenVINO: A Comprehensive Installation Manual

This document serves as an instructive guide for the implementation of OpenVINO for the utilization of the Model Optimizer on NCS, EOT, and XE1 boards.

**- Important Note:**

The subsequent instructions are designed specifically for Ubuntu OS, to facilitate the integration of USB peripherals within a Dockerized environment.**

## Step 1: Installation of Docker

Follow the instruction here: https://www.simplilearn.com/tutorials/docker-tutorial/how-to-install-docker-on-ubuntu

## Step 2: Execution of the Makefile

Everything here is already done for you. Just follow the steps.

### Image Retrieval via Docker

Commence by executing the following command in the Command Line Interface (CLI):

```
make pull
```

### Activation of the Docker Container

Prior to executing the container, it is requisite to amend the Makefile to incorporate the directories containing your models and datasets.

```
make run
```

## Step 3: Employment of the Model Optimizer

Subsequent to entering the container, the Model Optimizer should be utilized for the compression of your application.

## Step 4: Deployment of the Inference Engine

Operate your application using the optimized model. This stage requires the provision of a demonstrative script for application execution.