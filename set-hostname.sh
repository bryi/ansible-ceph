#!/bin/bash
list_of_ips=(ceph-1 ceph-2 ceph-3)
num=1
for ip in ${list_of_ips[*]}; do 
    ssh $ip hostnamectl set-hostname ceph-${num}
    ssh $ip reboot
    num=$((num+1))
done