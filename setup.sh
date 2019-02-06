#!/bin/bash

export depot="/eos/uscms/store/group/lpchbb/LLDJntuples"
export depot2="/store/group/lpchbb/LLDJntuples"
export FWVersion="2017lldj"
export nversion="2017TestDaniel9"
export aversion="2017TestDanielAn9"

pushd `dirname ${BASH_SOURCE[0]}` > /dev/null
export basedir=`pwd`
popd > /dev/null

export listdir="${basedir}/lists"
export rootdir="${basedir}/roots"
export plotdir="${basedir}/plots"
#export andir="${basedir}/analysis"

export subdir="${basedir}/ntuples/config"
export asubdir="${basedir}/submitters"
