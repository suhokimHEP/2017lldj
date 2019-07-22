

runPUweights () {
 root -l -b -q 'makePUweights.C("'$1'")'
}

datasets=( \
 "MuonEG"       \
 "DoubleMuon"     \
 "DoubleEG"     \
# "SinglePhoton" \
)

for dataset in ${datasets[@]}
do

 runPUweights ${dataset}
 cp 2017_puWeights_${dataset}_69200.root ../../analyzers/

done


