DNS troubleshooting

$ kubectl run --generator=run-pod/v1 --rm utils -it --image arunvelsriram/utils bash
root@utils:/# host nginxheadless
root@utils:/# for i in $(seq 1 10) ; do curl nginxheadless; done
root@utils:/# curl -v nginxheadless

to to port forward the Prometheus console to your local machine
kubectl --namespace=prometheus port-forward deploy/prometheus-server 9090
