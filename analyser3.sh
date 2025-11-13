#!/bin/bash 
sov=0
nesov=0
for i in $(ls $1)
do
   for file in $(cat $1/$i)
   do
        age=$(echo $file | cut -d ":" -f2)
    if [[ $age -gt 18 ]]
    then
        sov=$(($sov + 1))
    else
        nesov=$(($nesov + 1))
        echo -e "несовершеннолетних - $nesov, совершеннолетних -$sov" 
    fi
   done
done
 
