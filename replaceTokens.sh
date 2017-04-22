# collect the arguments to local variables
source_f=$1
data_f=$2
target_f=$3
 
# create a sed action for each parameter
sed 's/\([^=]*\)=\(.*\)/s\/\\[\\[\1\\]\\]\/\2\//' $data_f > temp_f.txt 

# replace placeholders with properties
# feed the sed actions to sed command 
sed -f temp_f.txt $source_f > $target_f
 

