#!/bin/bash
# author: 
make
STARTTIME=$(date +%s)
tsp=("./instances/tsp100_test_concorde.txt")
instancenum=(100)
j=0
sources100=("./results/100/result_1.txt" "./results/100/result_2.txt" "./results/100/result_3.txt" "./results/100/result_4.txt" "./results/100/result_5.txt" "./results/100/result_6.txt" "./results/100/result_7.txt" "./results/100/result_8.txt" "./results/100/result_9.txt" "./results/100/result_10.txt" "./results/100/result_11.txt" "./results/100/result_12.txt" "./results/100/result_13.txt" "./results/100/result_14.txt" "./results/100/result_15.txt" "./results/100/result_16.txt" "./results/100/result_17.txt" "./results/100/result_18.txt" "./results/100/result_19.txt" "./results/100/result_20.txt" "./results/100/result_21.txt" "./results/100/result_22.txt" "./results/100/result_23.txt" "./results/100/result_24.txt" "./results/100/result_25.txt" "./results/100/result_26.txt" "./results/100/result_27.txt" "./results/100/result_28.txt" "./results/100/result_29.txt" "./results/100/result_30.txt" "./results/100/result_31.txt" "./results/100/result_32.txt")
threads=$1
for ((i=0;i<$threads;i++));do
{
	./test $i ${sources100[i]} ${tsp[j]} ${instancenum[j]}
}&
done
wait

ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME-$STARTTIME)) seconds to complete this task..."
echo "Done."
