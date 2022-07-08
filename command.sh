set -x 
set -e 


# Remove old host key and try to connect 
# ssh-keygen -R 20.51.200.239
#sshpass -p %TargetPass%
#ssh -o StrictHostKeyChecking=no 192.168.10.9 'uname -a' 

 

set -e 
set -x 
rm -rf sample 
mkdir -p sample 
cd sample
#tar -xvf outputDir/HostArchiveName -C .

set -x 
set -e 


# Create new test dir for the current build 
rm -rf test
mkdir test


# Copy files 
rm -rf tccdev_checkout_dir
mkdir tccdev_checkout_dir

cd tccdev_checkout_dir


rm -rf ci
mkdir ci 


#elete then
ls -l
cd ci
touch run_robot_tests.py 
touch check_tcc_uninstall.sh  

rm -rf host_test_path
mkdir host_test_path

rm -rf arch_tests_dir
mkdir arch_tests_dir

#cp tccdev_checkout_dir/ci/run_robot_tests.py host_test_path
#cp arch_tests_dir/tcc_tools_tests.tar.gz host_test_path 


# Extract test archive 
cd host_test_path
#tar -xzf tcc_tools_tests.tar.gz 
cd ..
#step 4
set -x 
rm -rf target_download_dir

set -x 


mkdir target_download_dir 



ls -al
 
#ci/check_tcc_uninstall.sh 



####Step 5 

pwd


touch arch_tests_dir/tcc_tools_tests.tar.gz 


#tccdev_checkout_dir/ci/run_robot_tests.py 
#tccdev_checkout_dir/ci/run_platform_tests.py 
#tccdev_checkout_dir/ci/remove_tcc_files.sh 

 

