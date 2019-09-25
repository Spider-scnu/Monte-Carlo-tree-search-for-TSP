#!/bin/bash
# author: 

make
cp instances/Instances-To-Run.txt ./
cp -r instances code 
STARTTIME=$(date +%s)
./test
wait

ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME-$STARTTIME)) seconds to complete this task..."
echo "Done."
