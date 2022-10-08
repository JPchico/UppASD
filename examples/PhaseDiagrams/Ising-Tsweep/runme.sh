#! /bin/bash 
for temp in `seq 0 25 1500` 
do
   Temp=`echo $temp | awk '{ printf "%04i",$1}'`
   mkdir T$Temp/ 2>/dev/null
   echo "Temp: " $Temp
   cp Base/* T$Temp/
   cd T$Temp/
   gsed -i "s/TEMP/$Temp/g" inpsd.dat
   /Users/andersb/Jobb/UppASD_release/UppASD_release/source/sd > out
   cd ..
done
exit
