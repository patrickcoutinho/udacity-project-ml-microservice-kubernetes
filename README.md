[![CircleCI](https://circleci.com/gh/patrickcoutinho/udacity-project-ml-microservice-kubernetes/tree/master.svg?style=svg)](https://circleci.com/gh/patrickcoutinho/udacity-project-ml-microservice-kubernetes/tree/master)

## Project Overview

In this project, I show the skills I have acquired to operationalize a Machine Learning Microservice API. 

We have a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). T

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
* Run `make install` to install the necessary dependencies

### Prerequisites

For Docker and Kubernetes:

- You should have `docker` available in your host. 
- You should have `minikube` and `kubectl` available in your host. 

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh `
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Make prediction

1. Run in your terminal:  `./make_prediction.sh`

### Files in repository

1. `.circle/config.yml`: CircleCI config file
2. `output_txt_files/`: Text output files
3. `Dockerfile`: Instructions to create our Docker image and container
4. `app.py`: Python app
5. `Makefile`: file with instructions to setup environment, install dependencies, test and lint code
6. `run_docker.sh`: instructions to build Docker image end run container
7. `upload_docker.sh`: instructions to upload Docker image to images repository (Docker Hub)
8. `run_kubernetes.sh`: instructions to run local cluster with `kubectl`
9. `make_prediction.sh`: run prediction via `curl` on `localhost`