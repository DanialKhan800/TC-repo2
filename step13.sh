set -x 
set -e 


# Copy robot results 
rm -rf robot_result 
cp -r %host_test_path%/robot_result . 


# Merge results 
rm -rf robot_summary 
mkdir robot_summary 


for dir in \ 
robot_result/dso_logs 
do 
if [ -d "$dir" ] 
then 
cp -r $dir robot_summary 
fi 
done 


rebot --nostatusrc -N %PLATFORM_NAME%_summary -d robot_summary -l %PLATFORM_NAME%_summary_log.html\ 
-r %PLATFORM_NAME%_summary_report.html -x %PLATFORM_NAME%_summary_xoutput.xml -o %PLATFORM_NAME%_summary_output.xml\ 
robot_result/*_output.xml 


# Copy to share 
cp -r robot_result %output_dir% 
cp -r robot_summary %output_dir% 

