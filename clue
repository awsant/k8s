DNS troubleshooting

$ kubectl run --generator=run-pod/v1 --rm utils -it --image arunvelsriram/utils bash
root@utils:/# host nginxheadless
root@utils:/# for i in $(seq 1 10) ; do curl nginxheadless; done
root@utils:/# curl -v nginxheadless
