#!/bin/bash

# just calls the checker scripts automatically generated
# submission time in ${basedir}/submitters/gitignore/${aversion}/${sample}/checker.sh

printf "Files checked for completion after condor submition : \n"
printf "%50s %4s %4s \n" Sample Tot  Left

samples=( \
 #"Data_DoubleMuon_B"         \
 #"Data_DoubleMuon_C"         \
 #"Data_DoubleMuon_D"         \
 #"Data_DoubleMuon_E"         \
 #"Data_DoubleMuon_F"         \
 #"Data_DoubleEG_B"         \
 #"Data_DoubleEG_C"         \
 #"Data_DoubleEG_D"         \
 #"Data_DoubleEG_E"         \
 #"Data_DoubleEG_F"         \
 #"Data_MuonEG_B"         \
 #"Data_MuonEG_C"         \
 #"Data_MuonEG_D"         \
 #"Data_MuonEG_E"         \
 #"Data_MuonEG_F"         \
 #"DYJetsToLL_M-50"            \
 #"WJetsToLNu"     \
 #"TTJets"          \
 #"TTtoLL"          \
 #"ST_s-channel_4f_leptonDecays"             \
 #"ST_t-channel_antitop_4f_inclusiveDecays"  \
 #"ST_t-channel_top_4f_inclusiveDecays"      \
 #"ST_tW_antitop_5f_NoFullyHadronicDecays"   \
 #"ST_tW_top_5f_NoFullyHadronicDecays"        \
 #"WW"                 \
 #"WZ"                 \
 #"ZZ"                 \
 #"WGToLNuG"              \
 #"ZGTo2LG"               \
 #"ZH_HToBB_ZToLL"        \
 #"ggZH_HToBB_ZToLL"      \
 #"QCD_HT100to200"        \
 #"QCD_HT200to300"        \
 #"QCD_HT300to500"        \
 #"QCD_HT500to700"        \
 #"QCD_HT700to1000"       \
 #"QCD_HT1500to2000"      \
 #"QCD_HT2000toInf"       \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-2"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-20"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-200"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-2"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-20"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-200"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-2"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-20"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-200"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-2"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-20"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-200"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-2"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-20"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-200"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-2"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-20"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-200"  \ 
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-3"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-30"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-300"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-3"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-30"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-300"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-3"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-30"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-300"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-3"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-30"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-300"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-3"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-30"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-300"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-3"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-30"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-300"  \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-5"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-50"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-500"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-5"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-50"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-500"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-5"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-50"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-500"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-5"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-50"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-500"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-5"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-50"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-500"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-5"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-50"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-500"  \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000"   \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000"   \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1"      \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10"     \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100"    \
 "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000" \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000" \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1"    \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10"   \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100"  \
 "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000" \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-2"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-20"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-200"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-2"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-20"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-200"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-2"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-20"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-200"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-2"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-20"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-200"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-2"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-20"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-200"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-2"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-20"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-200"  \ 
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-3"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-30"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-300"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-3"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-30"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-300"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-3"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-30"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-300"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-3"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-30"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-300"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-3"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-30"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-300"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-3"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-30"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-300"  \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-5"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-50"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-500"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-5"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-50"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-500"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-5"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-50"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-500"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-5"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-50"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-500"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-5"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-50"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-500"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-5"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-50"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-500"  \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10"   \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100"  \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000" \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000"   \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000"   \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1"      \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10"     \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100"    \
 "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-10"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-100"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-7_ctauS-1000" \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000" \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000" \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1"    \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10"   \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100"  \
 "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000" \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1"      \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10"     \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100"    \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000"   \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1"      \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10"     \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100"    \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000"   \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1"      \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10"     \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100"    \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000"   \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1"      \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10"     \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100"    \
 "ZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000"   \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1"      \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-10"     \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-100"    \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-7_ctauS-1000"   \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1"      \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-10"     \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-100"    \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-15_ctauS-1000"   \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1"      \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-10"     \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-100"    \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-40_ctauS-1000"   \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1"      \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-10"     \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-100"    \
 "ggZH_HToSSTo4Tau_ZToLL_MH-125_MS-55_ctauS-1000"   \
)

totin=0
totleft=0

for sample in ${samples[@]}
do

 left=$(bash "${basedir}/submitters/gitignore/${aversion}/${sample}/checker.sh" | wc -l )
 lc=$( cat "${basedir}/submitters/gitignore/${aversion}/${sample}/checker.sh" | wc -l )

 totin=$(($totin+$lc))
 totleft=$(($totleft+$left))

 printf "%50s %4s %4s \n" ${sample} ${lc}  ${left}
 
done
 printf " --------------------------------------------------\n"
 printf "%50s %4s %4s \n" Total  $totin $totleft
