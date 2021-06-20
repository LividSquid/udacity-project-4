[![CircleCI](https://circleci.com/gh/LividSquid/udacity-project-4/tree/master.svg?style=svg)](https://circleci.com/gh/LividSquid/udacity-project-4/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

### Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

### Files
* `app.py` - The python application that returns predictions
* `Dockerfile` - `Dockerfile` used to build Docker image
* `Makefile` - Provides sets of instructions to be run with the `make` command
* `make_prediction.sh` - Script to quickly post data to the application
* `model_data/` - Provided with the project. Training data?
* `output_text_files/` - Output examples
  * `docker_out.txt` - Sample output from application running in Docker
  * `kubernetes_out.txt` - Sample Kubernetes output
* `README.md` - This file
* `requirements.txt` - A list of Python dependencies to be installed using `make install`
* `run_docker.sh` - Script to run the application locally in Docker
* `run_kubernetes.sh` - Script to run the application in a Minikube deployment
* `upload_docker.sh` - Script to upload Docker container to Docker Hub (must be run after `run_docker.sh`
