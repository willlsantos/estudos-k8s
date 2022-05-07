kubectl get deployments
kubectl run nginx --image nginx
kubectl get deployments.apps 
kubectl get deployments
kubectl get pods
kubectl get pod nginx -o yaml > meu-primeiro.yaml
vim meu-primeiro.yaml 
kubectl delete pods nginx
kubectl create -f meu-primeiro.yaml 
kubectl get pods
kubectl create deployment meu-nginx --image=nginx --dry-run=client -o yaml > deployment-template.yaml
ls
kubectl delete pod nginx 
nano deployment-template.yaml 
kubectl get pods
kubectl get deployments.apps 
kubectl get svc
kubectl get ep
kubectl create -f deployment-template.yaml 
kubectl get pods
kubectl get deployments
kubectl get rs
kubectl expose meu-nginx
kubectl get svc
kubectl get deployment
kubectl expose deployment meu-nginx
kubectl edit deployment
kubectl get pods
kubectl expose pod meu-nginx-85848d45c4-zpfwr
kubectl expose deployment meu-nginx --port=80
kubectl get svc
kubectl get ep
kubectl get deployments. --all-namespaces
kubectl scale --replicas=10 deployment meu-nginx
kubectl get ep
kubectl scale --replicas=2 deployment meu-nginx
kubectl get ep
kubectl get svc
kubectl get pods
kubectl logs -f meu-nginx-85848d45c4-dnzvf
kubectl get pods
kubectl logs -f meu-nginx-85848d45c4-dnzvf
kubectl get svc
kubectl get svc -o yaml > meu_primeiro_service.yaml
vim meu_primeiro_service.yaml 
rm -rf meu_primeiro_service.yaml 
kubectl get svc meu-nginx -o yaml > meu_primeiro_svc.yaml
vim meu_primeiro_svc.yaml 
kubectl delete svc meu-nginx 
kubectl creat -f meu_primeiro_svc.yaml 
kubectl create -f meu_primeiro_svc.yaml 
kubectl get svc
kubectl get ep
vim meu_primeiro_svc.yaml 
shutdown -t 1
sudo apt-get update
sudo apt upgrade -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
docker version
cat > /etc/docker/daemon.json <<EOF
{
  "exec-opts": ["native.cgroupdriver=systemd"],
  "log-driver": "json-file",
  "log-opts": {
    "max-size": "100m"
  },
  "storage-driver": "overlay2"
}
EOF

sudo systemctl daemon-reload
sudo systemctl restart docker
docker info | grep -i cgroup
sudo apt-get update && sudo apt-get install -y apt-transport-https gnupg2
sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubelet kubeadm kubectl
kubectl version
sudo kubeadm config images pull
sudo kubeadm init
kubectl describe node k8s-01
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
sudo systemctl daemon-reload
sudo systemctl restart kubelet
kubectl get nodes
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
kubectl get nods
kubectl get nodes
kubectl describe nodes k8s-01
kubectl get nodes
kubectl get pods -n kube-system
kubectl get nodes
kubectl completion bash > /etc/bash_completion.d/kubectl
source <(kubectl completion bash)
kubectl get namespaces
sudo su -
sudo apt-get update && upgrade -y
kubectl get nods
kubectl get nodes
kubectl get pods
kubectl edit svc
kubectl get svc
kubectl edit svc meu-nginx
kubectl get nodes
kubectl get svc
kubectl delete svc meu-nginx
kubectl expose deployment nginx --type=NodePort
kubectl expose deployment meu-nginx --type=NodePort
kubectl expose deployment meu-nginx --type=NodePort --port=80
kubectl get svc
kubectl describe svc meu-nginx
kubectl get svc -o yaml > meu_primeiro_service-nodeport.yaml
vi meu_primeiro_service-nodeport.yaml 
kubectl get svc -o yaml > meu_primeiro_service-nodeport.yaml
kubectl get svc meu-nginx -o yaml > meu_primeiro_service-nodeport.yaml
vi meu_primeiro_service-nodeport.yaml 
kubectl delelte svc meu-nginx
kubectl delete svc meu-nginx
kubectl create -f meu_primeiro_service-nodeport.yaml 
kubectl get svc
kubectl delete svc meu-nginx
kubectl expose deployment meu-nginx --type=LoadBalancer
kubectl expose deployment meu-nginx --type=LoadBalancer --port=80
kubectl get svc
kubectl get ep
kubectl get svc meu-nginx -o yaml > meu_primeiro_service-loadbalancer.yaml
vi meu_primeiro_service-loadbalancer.yaml 
kubectl delete svc meu-nginx 
kubectl create -f meu_primeiro_service-loadbalancer.yaml 
kubectl get svc
kubectl describe ep
kubectl describe ep meu-nginx
ls
vim meu-primeiro.yaml 
cp deployment-template.yaml meu_primeiro_deployment.yaml
vim meu_primeiro_deployment.yaml 
kubectl delete deployments meu-nginx
kubectl create -f meu_primeiro_deployment.yaml 
kubetl get deployments
kubectl get deployments
kubectl delte deployment meu-nginx
kubectl delete deployment meu-nginx
kubectl delete svc meu-nginx
kubectl get svc
kubectl get ep
clear
cat meu_primeiro_service-nodeport.yaml 
vim meu_primeiro_deployment.yaml 
kubectl create -f meu_primeiro_deployment.yaml 
kubectl delete -f meu_primeiro_deployment.yaml 
kubectl get svc
kubectl get pods
kubectl get nodes
exit
kubectl get pods
vim meu_primeiro_deployment.yaml 
kubectl create -f meu_primeiro_deployment.yaml 
kubectl get deployments.apps 
kubectl get deployments
kubectl describe meu-nginx
kubectl describe deployment meu-nginx
kubectl create -f meu_primeiro_svc.yaml 
kubectl get svc
vim meu_primeiro_svc.yaml 
kubectl edit svc meu-nginx
kubectl get svc
kubectl edit svc meu-nginx
kubectl edit deployments.apps 
kubectl edit deployments meu-nginx
kubectl get pods
kubectl get rs
kubectl edit deployments meu-nginx
kubectl get deployments meu-nginx
kubectl get pods -o wide
kubectl exec -ti meu-nginx-868fcbdcf4-56p7r -- bash
kubectl delete deployment meu-nginx
kubectl delete svc meu-nginx
kubectl get namespaces
clear
kubectl create namespace giropops
clear
kubectl get namespaces
kubectl describe namespace giropops
kubectl get namespaces giropops -o yaml > meu_primeiro_namespace.yaml
vim meu_primeiro_namespace.yaml 
kubectl create -f meu_primeiro_namespace.yaml 
kubectl get namespaces 
kubectl create -f namespace_limitado.yaml  -n giropops 
kubectl get limitranges 
kubectl get limitranges  -n giropops 
kubectl describe limitrange -n giropops 
vim pod-limitado.yaml
kubectl create -f pod-limitado.yaml 
kubectl get pods
kubectl get pods -n giropops
kubectl describe pods limit-pod -n giropops
kubectl get pods -n giropops -o yaml > pod-limited.yaml
vim pod-limited.yaml 
kubectl run kong --image=kong
kubectl get pods
kubectl log kong
kubectl logs kong
kubectl delete pod kong
kubectl get svc -n giropops
kubectl get pods -n giropops
kubectl delete pods limit-pod -n giropops
kubectl get deployments
kubectl get deployments -n giropops
kubectl describe nodes k8s-02
kubectl describe nodes k8s-01
ls
kubectl apply -f meu_primeiro_deployment.yaml 
kubectl get pods
kubectl get pods -o wide
kubectl scale replicas =6 deployment meu-nginx
kubectl scale --replicas=6 deployment meu-nginx
kubectl get pods -o wide
kubectl taint node k8s-02 key1=value1:NoSchedule
kubectl describe nodes k8s-02
kubectl scale --replicas=6 deployment meu-nginx
kubectl get deployment meu-nginx
kubectl scale --replicas=10 deployment meu-nginx
kubectl get deployment meu-nginx
kubectl get pods -o wide 
kubectl edit deployment meu-nginx
kubectl delete deployment meu-nginx
kubectl taint node k8s-02 key1=value1:NoSchedule-
ls
cat deployment-template.yaml 
cat meu-primeiro.yaml 
vim meu_primeiro_deployment.yaml 
kubectl apply -f meu_primeiro_deployment.yaml 
kubectl get pods
kubectl get pods -o wide
kubectl delete deployment meu-nginx
vim meu_primeiro_deployment.yaml 
kubectl apply -f meu_primeiro_deployment.yaml 
kubectl get pods -o wide
kubectl taint node k8s-02 key1=value1:NoSchedule
kubectl scale --replicas=10 deployment meu-nginx
kubectl get pods -o wide
kubectl logs meu-nginx-868fcbdcf4-jdcft 
kubectl describe pods meu-nginx-868fcbdcf4-jdcft 
kubectl edit pod meu-nginx-868fcbdcf4-jdcft 
kubectl delete deployment meu-nginx 
kubectl taint node k8s-02 key1=value1:NoSchedule-
kubectl apply -f meu_primeiro_deployment.yaml 
kubectl get pods -o wide
kubectl taint node k8s-02 key1=value1:NoExecute
kubectl get pods -o wide
kubectl taint node k8s-02 key1=value1:NoExecute-
kubectl get pods -o wide
kubectl taint node k8s-02 key1=value1:NoExecute
kubectl describe nodes k8s-01
kubectl describe nodes k8s-02
kubectl get resources
kubectl get limitranges 
kubectl get limitranges -n giropops 
kubectl delete limitranges -n giropops 
kubectl delete limitranges limitando-recursos -n giropops 
kubectl taint node k8s-02 key1=value1:NoExecute-
kubectl scale --replicas=1 deployment meu-nginx 
kubectl scale --replicas=6 deployment meu-nginx 
kubectl get pods -o wide
shutdown -h now
vim primeiro-deployment.yaml
kubectl create -f primeiro-deployment.yaml 
vim primeiro-deployment.yaml 
kubectl create -f primeiro-deployment.yaml 
kubectl get pods
kubectl get deployment
kubectl delete deployment meu-nginx
kubectl get deployment
cp primeiro-deployment.yaml segundo_deployment.yaml
vim segundo_deployment.yaml 
kubectl apply -f segundo_deployment.yaml 
kubectl get pods
kubectl get deployments
kubectl describe deployments primeiro-deployment 
kubectl get rs
kubectl describe rs primeiro-deployment-57c778d58 
kubectl get pods
kubectl describe pods primeiro-deployment-57c778d58-5lpfv 
shutdown -h now
sudo apt-get update
ls
vi meu_primeiro_deployment.yaml 
vi segundo_deployment.yaml 
kubectl create -f segundo_deployment.yaml 
kubectl get deployments.apps 
kubectl delete deployment segundo-deployment 
kubectl create -f segundo_deployment.yaml 
kubectl describe primeiro-deployment
kubectl get deployments
kubectl describe deployment primeiro-deployment 
kubectl get rs
kubectl describe rs primeiro-deployment-57c778d58
kubectl get pods
kubectl describe pod primeiro-deployment-57c778d58-5lpfv 
kubectl get pods -l dc=NL
kubectl get pods -l dc=UK
kubectl get pods -L dc
kubectl get rs -l dc=NL
kubectl get rs -l dc=UK
kubectl get rs -L dc
kubectl get nodes
kubectl label
kubectl label nodes k8s-02 disk=SSD
kubectl label nodes k8s-03 disk=HDD
kubectl describe nodes k8s-02
kubectl label node k8s-02 --all
kubectl label nodes k8s-02 --all
kubectl label nodes k8s-02 --list
kubectl label nodes k8s-03 --list
kubectl label nodes k8s-03 disk=SSD --overwrite
kubectl label nodes k8s-02 dc=UK
kubectl label nodes k8s-03 dc=NL
cp primeiro-deployment.yaml terceiro_deployment.yaml
vim terceiro_deployment.yaml 
kubectl create -f terceiro_deployment.yaml 
kubectl label nodes k8s-03 --list
kubectl label nodes k8s-0s --list
kubectl label nodes k8s-02 --list
kubectl get pods -o wide
kubectl label nodes k8s-03 disk=HDD --overwrite
kubectl get pods -o wide
kubectl edit deployments terceiro-deployment 
kubectl get pods -o wide
kubectl describe deployments terceiro-deployment 
kubectl get rs
history
tal -3 terceiro_deployment.yaml 
tail -3 terceiro_deployment.yaml 
kubectl label nodes dc- --all
kubectl label nodes disk- --all
vim primeiro-replicaset.yaml
cat primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
kubectl get rs
kubectl edit rs primeiro-deployment-57c778d58 
vim primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
kubectl edit rs primeiro-deployment-57c778d58 
vim primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
kubectl edit rs primeiro-deployment-57c778d58 
vim primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
kubectl edit rs primeiro-deployment-57c778d58 
kubectl edit rs terceiro-deployment-6549758dbb 
kubectl describe rs primeiro-deployment-57c778d58 
vim primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
vim primeiro-replicaset.yaml 
kubectl create -f primeiro-replicaset.yaml 
kubectl get po
kubectl describe rs replica-set-primeiro 
kubectl get po
kubectl get po -L system
kubectl edit rs replica-set-primeiro 
kubectl get po
kubectl get po -L system
kubectl delete po replica-set-primeiro-8qnrl 
kubectl get po -L system
kubectl describe po replica-set-primeiro-r5sb2
kubectl get po -L system
kubectl get deploy
kubectl delete deploy primeiro-deployment 
kubectl delete deploy segundo-deployment 
kubectl delete deploy terceiro_deployment.yaml 
kubectl delete deploy terceiro-deployment 
vim primeiro-daemonset.yaml
kubectl get po -L system
kubectl create -f primeiro-daemonset.yaml 
vim primeiro-daemonset.yaml
kubectl create -f primeiro-daemonset.yaml 
vim primeiro-daemonset.yaml
kubectl create -f primeiro-daemonset.yaml 
vim primeiro-replicaset.yaml 
vim primeiro-daemonset.yaml
kubectl create -f primeiro-daemonset.yaml 
vim primeiro-replicaset.yaml 
vim primeiro-daemonset.yaml
kubectl create -f primeiro-daemonset.yaml 
kubectl ds
kubectl get ds
kubectl get pods
kubectl get po -o wide
kubectl delete rs replica-set-primeiro 
kubectl get po -o wide
kubectl describe node k8s-01
kubectl taint node k8s-01 node-role.kubernetes.io/master-
kubectl get po -o wide
kubectl taint node k8s-01 node-role.kubernetes.io/master=value1:NoSchedule
kubectl get po -o wide
kubectl edit ds daemon-set-primeiro 
kubectl set image ds daemon-set-primeiro nginx=nginx:1.15.0
kubectl get pods -o wide
kubectl describe ds daemon-set-primeiro 
kubectl get po -o wide
kubectl rollout history daemonset daemon-set-primeiro 
kubectl rollout history daemonset daemon-set-primeiro  --revision=1
kubectl rollout history daemonset daemon-set-primeiro  --revision=2
kubectl rollout undo daemonset daemon-set-primeiro --to-revision=1
kubectl describe pods daemon-set-primeiro-lf9w7 | grep Image
kubectl get pods -o wide
ls
vim primeiro-daemonset.yaml 
kubectl describe daemonsets.apps 
kubectl get pods -o wide
kubectl delete ds daemon-set-primeiro 
kubectl create -f primeiro-daemonset.yaml 
vim primeiro-daemonset.yaml 
kubectl create -f primeiro-daemonset.yaml 
kubectl get ds
kubectl describe ds daemon-set-primeiro 
kubectl set image ds daemon-set-primeiro nginx=nginx:1.15.0
kubectl get ds
kubectl get pods -o wide

kubectl rollout undo daemonset daemon-set-primeiro --to-revision=1
kubectl get pods -o wide
git
kubectl get rs
kubectl delete ds daemon-set-primeiro 
kubectl get pods
shutdown -h now
