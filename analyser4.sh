#!/bin/bash
maxi=0
mini=100
newname1=""
newname2=""
for i in $(ls "$1")
do
	for info in $(cat "$1/$i")
	do
		age=$(echo $info | cut -d ":" -f2)
		name=$(echo $info | cut -d ":" -f1)
		if [[ $age -gt $maxi ]]
		then
			maxi=$age
			newname1=$name
		fi
		if [[ $age -lt $mini ]]
		then
			mini=$age
			newname2=$name
		fi
	done	 
done
echo "возраст - $maxi, имя - $newname1"
echo "возраст - $mini, возраст -  $newname2"

