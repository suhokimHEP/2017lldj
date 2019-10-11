#!/bin/bash

export depot="/eos/uscms/store/group/lpchbb/LLDJntuples"
export depot2="/store/group/lpchbb/LLDJntuples"
export FWVersion="2017lldj"
export nversion="2017lldj_NoJEC"
#export aversion="2017Comparisons_noPUWeights_simTrig"
#export aversion="amc_Inclusive_FineBins_SF_31July"
#export aversion="amc_kfactor_TVShift_20Aug"
export aversion="amc_kfactor_TVShift_20Aug_UncCats"

#export aversion="amcPU_MakingPlots2"

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
