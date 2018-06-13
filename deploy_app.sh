#!/bin/bash

aws ec2 run-instances --count 1 --image-id ami-67589505 --instance-type  t2.micro --key-name whispir-common --placement AvailabilityZone=ap-southeast-2b --subnet-id subnet-79adca1d --user-data file:application.sh

