#!/bin/bash
# author: cuhksz-OR

make 
STARTTIME=$(date +%s)
tsp=("./data/tsp50_test_concorde.txt")
instancenum=(50)

j=0
sources50=("50/result_1.txt" "50/result_2.txt" "50/result_3.txt" "50/result_4.txt" "50/result_5.txt" "50/result_6.txt" "50/result_7.txt" "50/result_8.txt" "50/result_9.txt" "50/result_10.txt" "50/result_11.txt" "50/result_12.txt" "50/result_13.txt" "50/result_14.txt" "50/result_15.txt" "50/result_16.txt" "50/result_17.txt" "50/result_18.txt" "50/result_19.txt" "50/result_20.txt" "50/result_21.txt" "50/result_22.txt" "50/result_23.txt" "50/result_24.txt" "50/result_25.txt" "50/result_26.txt" "50/result_27.txt" "50/result_28.txt" "50/result_29.txt" "50/result_30.txt" "50/result_31.txt" "50/result_32.txt" )
threads=$1
for ((i=0;i<$threads;i++));do
{
	./test $i ${sources50[i]} ${tsp[j]} ${instancenum[j]}
}&
done
wait


ENDTIME=$(date +%s)
echo "It takes $(($ENDTIME-$STARTTIME)) seconds to complete this task..."
echo "Done."
