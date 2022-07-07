set -x 
set -e 


# Create new test dir for the current build 
rm -rf %host_test_path% 
mkdir %host_test_path% 


# Copy files 
cp %tccdev_checkout_dir%/ci/run_robot_tests.py %host_test_path% 
cp %arch_tests_dir%/tcc_tools_tests.tar.gz %host_test_path% 

