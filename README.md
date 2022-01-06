[![bboketch](https://circleci.com/gh/bboketch/udacity-capstone-project.svg?style=svg)](https://circleci.com/gh/bboketch/udacity-capstone-project)

# udacity-capstone-project

In this project I applied the skills I have learnt in the past couple of months from the Udacity Cloud Devops Engineer nanodegree. These include:

* Working in AWS
* Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
* Building pipelines
* Working with Ansible and CloudFormation to deploy clusters
* Building Kubernetes clusters
* Building Docker containers in pipelines


## Setup the Environment

* create python virtualenv & source it:
	source ~/.capstone/bin/activate
	python3 -m venv ~/.capstone
* Then run make install
* Set up project in CircleCi

### Running `app.py`

1. Set up Hello world application
2. Run in Docker:  `./run_docker.sh` and `./upload_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Deploy the application in Amazon EKS
1. eksctl create cluster --name capstone --region us-east-1 --fargate 
2. aws eks --region us-east-1 update-kubeconfig --name capstone 
3. kubectl config use-context arn:aws:eks:us-east-1:731488622603:cluster/capstone 
4. kubectl get nodes
5. kubectl get pods --all-namespaces  
6. kubectl get deployment
