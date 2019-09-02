#!/bin/bash

#for sample in \
# "DYJetsToLL_M-50"  
#
#do
##  ./runanalyzer.exe -s ${sample} -l "20000" -x "" -e "-1" -i "../lists" -o "junk" -n 999999999 -a 1 -d -m
#  ./runanalyzer.exe -s ${sample} -l "155" -x "" -e "1000000" -i "../lists" -o "DileptwGenW" -n 70 -a 1 -d -m
#
#done #for sample in DY50..

for sample in \
 "Data_DoubleEG_B"

do
  ./runanalyzer.exe -s ${sample} -l "20000" -x "" -e "100000" -i "../Corrlist" -o "CorrJet" -n 10 -a 1 -d
done # for datasample               
