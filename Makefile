setup:
	# Create python virtualenv & source it
	# source ~/.capstone/bin/activate
	python3 -m venv ~/.capstone

install:
	# This should be run from inside a virtualenv
	pip3 install --no-cache-dir --upgrade pip &&\
		pip3 install --no-cache-dir -r requirements.txt
		
test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb


validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

lint:
	./hadolint flask_app/Dockerfile
	pylint --disable=R,C,W1203,W1202, flask_app/app.py

run-app:
	python3 flask_app/app.py

all: install lint test

create-cluster:
	./create_cluster.sh

k8s-deployment: create-cluster
	# If using minikube, first run: minikube start
	./k8s_deployment.sh

# k8s-cleanup-resources:
# 	./bin/k8s_cleanup_resources.sh

# eks-delete-cluster:
# 	./bin/eksctl delete cluster --name "${CLUSTER_NAME}" \
# 		--region "${REGION_NAME}"