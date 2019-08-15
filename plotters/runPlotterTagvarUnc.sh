#!/bin/bash

regions=( \ 
 "EleMuOSOF"     \   
 "EleMuOSOFL"     \   
 "TwoEleDY"      \   
 "TwoMuDY"       \
) 

variables=( \
 "AllJets_AODCaloJetMedianLog10IPSig"         \
 "AllJets_AODCaloJetMedianLog10TrackAngle"    \
 "AllJets_AODCaloJetAlphaMax"                 \
)

for region in ${regions[@]}
do
 for variable in ${variables[@]}
 do
  root -l -b -q  'plotter_tagvarUnc.C('\""${region}"\"', '\""${variable}"\"' , kFALSE)'

 done
done

