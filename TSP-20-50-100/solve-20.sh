#!/bin/bash
# author: 

make 
STARTTIME=$(date +%s)
tsp=("./instances/tsp20_test_concorde.txt")
instancenum=(20)

j=0
sources20=("./results/20-batch/result_1.txt" "./results/20-batch/result_2.txt" "./results/20-batch/result_3.txt" "./results/20-batch/result_4.txt" "./results/20-batch/result_5.txt" "./results/20-batch/result_6.txt" "./results/20-batch/result_7.txt" "./results/20-batch/result_8.txt" "./results/20-batch/result_9.txt" "./results/20-batch/result_10.txt" "./results/20-batch/result_11.txt" "./results/20-batch/result_12.txt" "./results/20-batch/result_13.txt" "./results/20-batch/result_14.txt" "./results/20-batch/result_15.txt" "./results/20-batch/result_16.txt" "./results/20-batch/result_17.txt" "./results/20-batch/result_18.txt" "./results/20-batch/result_19.txt" "./results/20-batch/result_20.txt" "./results/20-batch/result_21.txt" "./results/20-batch/result_22.txt" "./results/20-batch/result_23.txt" "./results/20-batch/result_24.txt" "./results/20-batch/result_25.txt" "./results/20-batch/result_26.txt" "./results/20-batch/result_27.txt" "./results/20-batch/result_28.txt" "./results/20-batch/result_29.txt" "./results/20-batch/result_30.txt" "./results/20-batch/result_31.txt" "./results/20-batch/result_32.txt")
threads=$1
for ((i=0;i<$threads;i++));do
{
	./test $i ${sources20[i]} ${tsp[j]} ${instancenum[j]}
}&
done
wait

ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME-$STARTTIME)) seconds to complete this task..."
echo "Done."
