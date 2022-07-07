#!/bin/bash 


sshpass -p %TargetPass% ssh -o StrictHostKeyChecking=no -q root@%target_hostname% date +%%Y%%m%%d -s $(date +%%Y%%m%%d) 
sshpass -p %TargetPass% ssh -o StrictHostKeyChecking=no -q root@%target_hostname% date +%%T -s $(date +%%T) 

