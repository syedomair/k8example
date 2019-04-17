
Docker Steps
--------------
- Defined multi-stage Dockerfile. 
- docker build -t hello-svc .  
- docker tag hello-svc syedomair/hello-svc:v1
- docker push syedomair/hello-svc
- docker run -p 8180:8180 syedomair/hello-svc:v1 

Minikube
--------
minikube start
kubectl create -f  hello-svc.yaml




