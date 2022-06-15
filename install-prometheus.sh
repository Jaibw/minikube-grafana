helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm install prometheus prometheus-community/prometheus
kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-np
sleep 120
minikube service prometheus-server-np --url
curl `minikube service prometheus-server-np --url`
