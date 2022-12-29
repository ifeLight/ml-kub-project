[![CircleCI](https://dl.circleci.com/status-badge/img/gh/ifeLight/ml-kub-project/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/ifeLight/ml-kub-project/tree/main)

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

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

### Installing

* Run `make install` to install the necessary dependencies
Note: If using Ubuntu, you may run into an issue with installing the dependencies. If so, run 

```bash
sudo apt-get update
sudo apt install libblas3 liblapack3 liblapack-dev libblas-dev -y
sudo apt install gfortran -y
```

Then run `make install` again.

### Linting

* Install hadolint from [here](https://github.com/hadolint/hadolint) and add addd the necessary permisssions with `chmod +x /usr/bin/hadolint`
* Run `make lint` to lint the project

### Testing

* Run `make test` to test the project

## Running the app

### Locally

* Run `python app.py` to run the app locally
* You can then access the app at `http://localhost:80`

### Docker

* Build and run the docker image: `./run_docker.sh`
* To make a prediction, run `./make_prediction.sh`
* To upload the image to Docker Hub, run `./upload_docker.sh`

### Kubernetes

* Setup and Configure Docker locally
* Setup and and install minikube locally, refer to this [link](https://kubernetes.io/docs/tasks/tools/install-minikube/)
* To set up a Kubernetes cluster, run `minikube start`
* To deploy the app, run `./run_kubernetes.sh`
* To make a prediction, run `./make_prediction.sh`

## Files

* `app.py` - The main application file
* `Dockerfile` - The Dockerfile to build the image
* `Makefile` - The Makefile to install dependencies and lint the project
* `make_prediction.sh` - The script to make a prediction
* `run_docker.sh` - The script to build and run the docker image
* `run_kubernetes.sh` - The script to deploy the app to Kubernetes
* `upload_docker.sh` - The script to upload the image to Docker Hub
* `requirements.txt` - The requirements file to install the dependencies
* `output_txt_files/docker_out.txt` - The sample output of the docker container
* `output_txt_files/kubernetes_out.txt` - The sample output of the kubernetes pod
* `model_data/boston_housing_prediction.joblib` - The model file
* `model_data/housing.csv` - The data file
* `.circleci/config.yml` - The CircleCI configuration file