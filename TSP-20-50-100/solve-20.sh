#!/bin/bash
# author: 

make 
STARTTIME=$(date +%s)
tsp=("./instances/tsp20_test_concorde.txt")
instancenum=(20)

j=0
sources20=("20/result_1.txt" "20/result_2.txt" "20/result_3.txt" "20/result_4.txt" "20/result_5.txt" "20/result_6.txt" "20/result_7.txt" "20/result_8.txt" "20/result_9.txt" "20/result_10.txt" "20/result_11.txt" "20/result_12.txt" "20/result_13.txt" "20/result_14.txt" "20/result_15.txt" "20/result_16.txt" "20/result_17.txt" "20/result_18.txt" "20/result_19.txt" "20/result_20.txt" "20/result_21.txt" "20/result_22.txt" "20/result_23.txt" "20/result_24.txt" "20/result_25.txt" "20/result_26.txt" "20/result_27.txt" "20/result_28.txt" "20/result_29.txt" "20/result_30.txt" "20/result_31.txt" "20/result_32.txt")
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
