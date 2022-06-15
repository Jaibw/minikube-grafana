helm repo add grafana https://grafana.github.io/helm-charts
helm install grafana grafana/grafana
kubectl expose service grafana --type=NodePort --target-port=3000 --name=grafana-np
sleep 120
minikube service grafana --url
nohup kubectl port-forward --address 0.0.0.0 svc/grafana-np 31000:80 &
echo 'Password:'
kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo
