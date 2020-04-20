#!/bin/bash

# Makes a list of files in eos
# then greps through to separate into samples
# 
# output files are xxx/lists/<sample>.list
# formatted as one file per line: /store/group/xxx.root

# don't forget to source setup.sh (from xxx/LLDJstandalones)
mkdir -p "${listdir}"

makealist() {
 printf "Making %s\n" $1
 fullsamplename=$(grep -i "$2" ${listdir}/allfiles.masterlist)
 printf "%s\n"  ${fullsamplename} > ${listdir}/$1.list
 sed -i -e "s@/eos/uscms@@" ${listdir}/$1.list
}

##### MC backgrounds
###
#### DY
#makealist "DYJetsToLL_M-50"            "/DYJetsToLL_M-50_"
###
#### WJets
#makealist "WJetsToLNu"      "/WJetsToLNu_"
###
#### TTbar
#makealist "TTJets"          "/TTJets_TuneCP5"
#makealist "TTtoLL"          "/TTJets_DiLept"
###
### Single Top
#makealist "ST_t-channel_antitop_4f_inclusiveDecays"    "/ST_t-channel_antitop_4f_inclusiveDecays_"
#makealist "ST_tW_antitop_5f_NoFullyHadronicDecays"     "/ST_tW_antitop_5f_NoFullyHadronicDecays_"
#makealist "ST_s-channel_4f_leptonDecays"               "/ST_s-channel_4f_leptonDecays_"
#makealist "ST_t-channel_top_4f_inclusiveDecays"        "/ST_t-channel_top_4f_inclusiveDecays_"
#makealist "ST_tW_top_5f_NoFullyHadronicDecays"         "/ST_tW_top_5f_NoFullyHadronicDecays_"
###
#### Diboson
#makealist "WW"                    "/WW_"
#makealist "WZ"                    "/WZ_"
#makealist "ZZ"                    "/ZZ_"
###
#### VGamma
#makealist "ZGTo2LG"                "/ZGToLLG_"
#makealist "WGToLNuG"               "/WGToLNuG_"
###
#### ZH
#makealist "ggZH_HToBB_ZToLL"       "/ggZH_HToBB_ZToLL_"
#makealist "ZH_HToBB_ZToLL"         "/ZH_HToBB_ZToLL_M125_"
###
####QCD 
#makealist "QCD_HT50to100"      "/QCD_HT50to100_"
#makealist "QCD_HT100to200"      "/QCD_HT100to200_"
#makealist "QCD_HT200to300"      "/QCD_HT200to300_"
#makealist "QCD_HT300to500"      "/QCD_HT300to500_"
#makealist "QCD_HT500to700"      "/QCD_HT500to700_"
#makealist "QCD_HT700to1000"     "/QCD_HT700to1000_"
##makealist "QCD_HT1000to1500"    "/QCD_HT1000to1500_"
#makealist "QCD_HT1500to2000"    "/QCD_HT1500to2000_"
#makealist "QCD_HT2000toInf"     "/QCD_HT2000toInf_"
###
### Data
#makealist "Data_DoubleMuon_B"          "/DoubleMuon/crab_Data_DoubleMuon_B/191101_141938"
#makealist "Data_DoubleMuon_C"          "/DoubleMuon/crab_Data_DoubleMuon_C"
#makealist "Data_DoubleMuon_D"          "/DoubleMuon/crab_Data_DoubleMuon_D"
#makealist "Data_DoubleMuon_E"          "/DoubleMuon/crab_Data_DoubleMuon_E/191102_101746"
#makealist "Data_DoubleMuon_F"          "/DoubleMuon/crab_Data_DoubleMuon_F"
###
#makealist "Data_DoubleEG_B"          "/DoubleEG/crab_Data_DoubleEG_B"
#makealist "Data_DoubleEG_C"          "/DoubleEG/crab_Data_DoubleEG_C"
#makealist "Data_DoubleEG_D"          "/DoubleEG/crab_Data_DoubleEG_D"
#makealist "Data_DoubleEG_E"          "/DoubleEG/crab_Data_DoubleEG_E"
#makealist "Data_DoubleEG_F"          "/DoubleEG/crab_Data_DoubleEG_F"
###
#makealist "Data_MuonEG_B"          "/MuonEG/crab_Data_MuonEG_B"
#makealist "Data_MuonEG_C"          "/MuonEG/crab_Data_MuonEG_C"
#makealist "Data_MuonEG_D"          "/MuonEG/crab_Data_MuonEG_D"
#makealist "Data_MuonEG_E"          "/MuonEG/crab_Data_MuonEG_E"
#makealist "Data_MuonEG_F"          "/MuonEG/crab_Data_MuonEG_F"


#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_noGen"         "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_"
### Signal Samples
#------- Base 4b
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1"         "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10"        "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100"       "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000"      "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1"         "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10"        "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100"       "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000"      "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1"         "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10"        "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100"       "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000"      "/ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1"       "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10"      "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100"     "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000"    "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1"       "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10"      "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100"     "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000"    "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1"       "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10"      "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100"     "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000"    "/ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_"
#------- 4b 5's
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-5"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-50"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-500"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-500"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-5"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-50"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-500"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-500"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-5"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-50"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-500"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-5"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-5"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-50"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-50"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-500"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-5"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-5"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-50"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-50"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-500"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-5"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-5"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-50"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-50"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-500"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-500"
#------- 4b 2's
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-2"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-20"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-200"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-200"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-2"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-20"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-200"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-200"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-2"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-20"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-200"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-2"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-2"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-20"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-20"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-200"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-2"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-2"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-20"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-20"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-200"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-2"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-2"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-20"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-20"
makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-200"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-200"
#------- 4b 3's
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-3"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-3"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-30"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-30"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-300"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-300"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-3"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-3"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-30"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-30"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-300"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-300"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-3"       "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-3"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-30"      "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-30"
#makealist "ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-300"     "_ggZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-300"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-3"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-10_newctauS-3"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-30"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-100_newctauS-30"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-300"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-300"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-3"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-10_newctauS-3"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-30"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-100_newctauS-30"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-300"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-300"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-3"         "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-10_newctauS-3"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-30"        "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-100_newctauS-30"
#makealist "ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-300"       "_ZH_HToSSTobbbb_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-300"

#------- Base 4d
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1"         "/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10"        "/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100"       "/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000"      "/ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1"         "/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10"        "/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100"       "/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000"      "/ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1"         "/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10"        "/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100"       "/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000"      "/ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1"       "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10"      "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100"     "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000"    "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1"       "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10"      "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100"     "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000"    "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1"       "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10"      "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100"     "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000"    "/ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_"
#------- 4d 5's
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-5"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-50"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-500"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-500"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-5"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-50"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-500"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-500"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-5"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-5"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-50"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-50"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-500"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-5"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-5"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-50"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-50"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-500"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-5"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-5"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-50"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-50"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-500"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-500"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-5"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-5"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-50"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-50"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-500"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-500"
#------- 4d 2's
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-2"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-20"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-200"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-200"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-2"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-20"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-200"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-200"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-2"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-2"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-20"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-20"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-200"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-2"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-2"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-20"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-20"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-200"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-2"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-2"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-20"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-20"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-200"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-200"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-2"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-2"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-20"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-20"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-200"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-200"
#------- 4d 3's
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-3"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-3"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-30"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-30"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-300"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-300"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-3"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-3"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-30"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-30"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-300"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-300"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-3"       "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-3"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-30"      "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-30"
makealist "ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-300"     "_ggZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-300"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-3"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-10_newctauS-3"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-30"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-100_newctauS-30"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-300"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-15_ctauS-1000_newctauS-300"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-3"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-10_newctauS-3"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-30"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-100_newctauS-30"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-300"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-40_ctauS-1000_newctauS-300"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-3"         "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-10_newctauS-3"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-30"        "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-100_newctauS-30"
makealist "ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-300"       "_ZH_HToSSTodddd_ZToLL_MH-125_MS-55_ctauS-1000_newctauS-300"
