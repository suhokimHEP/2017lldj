#!/bin/bash

export depot="/eos/uscms/store/group/lpchbb/LLDJntuples"
export depot2="/store/group/lpchbb/LLDJntuples"
export FWVersion="2017lldj"
export nversion="2017lldj_NoJEC"
#export aversion="newPUWeights_TVShift_kfactor_LooseJetCuts"
#export aversion="newPUWeights_TVShift_kfactor_JetCuts_pt30_eta2p0"
#export aversion="newPUWeights_TVShift_kfactor"

#export aversion="amcPU_MakingPlots2"
#export aversion="newPUWeights_TVShift_kfactor_JetCuts_eta2p0"
export aversion="oldPUWeights_TVShift_kfactor"

#export aversion="PUWeights_NoTVShift_ZSF_OPT"
#export aversion="CorrectPUWeights_TVShift_ZSF"

#export aversion="amcPU_gettingnPU"

pushd `dirname ${BASH_SOURCE[0]}` > /dev/null
export basedir=`pwd`
popd > /dev/null

export listdir="${basedir}/lists"
export rootdir="${basedir}/roots"
export plotdir="${basedir}/plots"
#export andir="${basedir}/analysis"

export subdir="${basedir}/ntuples/config"
export asubdir="${basedir}/submitters"
