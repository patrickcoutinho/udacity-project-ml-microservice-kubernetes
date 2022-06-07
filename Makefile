## The Makefile includes instructions on environment setup and lint tests
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	python3 -m venv /tmp/.devops
	source /tmp/.devops/bin/activate

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	wget -O ./hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 \
		&& chmod +x ./hadolint
	./hadolint Dockerfile
	pylint --disable=R,C,W1203,W1202 app.py

all: install lint test
