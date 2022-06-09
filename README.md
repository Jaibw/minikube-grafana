# minikube-grafana

<pre>
wget https://raw.githubusercontent.com/Jaibw/minikube-grafana/master/install-docker.sh
sh install-docker.sh
</pre>
Refresh your session and try 
<pre>
docker run hello-world
</pre>
Run below commands: 
<pre>
wget https://raw.githubusercontent.com/Jaibw/minikube-grafana/master/install-minikube.sh
sh install-minikube.sh
wget https://raw.githubusercontent.com/Jaibw/minikube-grafana/master/install-helm.sh
sh install-helm.sh
wget https://raw.githubusercontent.com/Jaibw/minikube-grafana/master/install-prometheus.sh
sh install-prometheus.sh
wget https://raw.githubusercontent.com/Jaibw/minikube-grafana/master/install-grafana.sh
sh install-grafana.sh
</pre>

Try to access Grafana at http://PUBLIC_IP:31000/

1. Add Prometheus Data Source - http://prometheus-server:80 
2. Import Dashobard with 6417

In terminal, run below commands to test your dashboard:
<pre>

kubectl run demo01 --image=nginnnnx 
kubectl run demo02 --image=nginx

</pre>
