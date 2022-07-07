#!/usr/bin/env bash 


set -x 
set -e 


# Setup target properties 
export TARGET_HOSTNAME=%target_hostname% 
export TARGET_PORT=22 
export TARGET_USERNAME=root 
export TARGET_PASSWORD=%TargetPass% 
export TEST_TYPE=%TEST_TYPE% 


# Source env 
source %path_to_vars%/vars.sh 


# Convert to lower case 
WORKFLOW=$(echo %WORKFLOW% | tr '[:upper:]' '[:lower:]') 
PLATFORM_NAME=$(echo %PLATFORM_NAME% | tr '[:upper:]' '[:lower:]') 
TEST_TYPE=$(echo %TEST_TYPE% | tr '[:upper:]' '[:lower:]') 


cd %host_test_path% 


export BASIC_PATH=$(pwd) 
export PATH=${PATH}:${BASIC_PATH}/install/tests/robotframework/src/bin 
export PYTHONPATH=${BASIC_PATH}/install/tests/robotframework/src:${PYTHONPATH+:${PYTHONPATH}} 
export BIOS_TYPE=%BIOS_TYPE% 
echo Bios type set as $BIOS_TYPE 


./run_robot_tests.py\ 
-A "${BASIC_PATH}/install/tests/argument_files/${PLATFORM_NAME}/argumentfile_$WORKFLOW.txt" \ 
--tests_list "${BASIC_PATH}/install/tests/tests_lists/${PLATFORM_NAME}/${TEST_TYPE}/tests_list_robot_$WORKFLOW.txt" \ 
--skip %EXCLUDE_TAGS% 


%target_hostname% 


set -e 
set -x 


cd ~/.tcc_tools 
./tcc_setup.py -u -f 
%target_hostname% 
%target_download_dir%/check_tcc_uninstall.sh -d 



