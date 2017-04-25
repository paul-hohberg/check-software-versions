#! /bin/bash

HOSTS="./hosts.txt"

for host in $(cat $HOSTS)

do
ssh -T $1@$host < ./sftwrverfmt.sh >> inventory.csv
done
