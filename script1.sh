set -x 
set -e 


# Remove old host key and try to connect 
ssh-keygen -R %target_hostname% 
sshpass -p %TargetPass% ssh -o StrictHostKeyChecking=no root@%target_hostname% 'uname -a' 

