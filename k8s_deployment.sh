# Step 1:
# This is your Docker ID/path
dockerpath=oketcbb/api

# Step 2:
# Run the Docker Hub container with kubernetes
kubectl run api-pod --image=$dockerpath --port=80 --labels app=api-pod

# Step 3:
#  Listing deployments
kubectl get deployments -o wide

# Step 4:
# Listing services
kubectl get services -o wide

# Step 5:
kubectl get pods -o wide

# Step 6:
# Forward the container port to a host
kubectl port-forward api-pod 8000:80