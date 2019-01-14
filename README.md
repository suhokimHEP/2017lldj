# 2017lldj
 
!!!!! Not ready yet. Do not use
For 2017 data.

##-----Removed everything in code for:
-PFJets
-PFchsJets
-slimmedJets
-all photonID variables

##-----Starting recipe:
# Fermilab uses tcsh by default even though it has bash!
# This framework is based in bash and
# technically maybe you don't need this,
# but tcshers be warned
 bash --login

# Set up the area
 export SCRAM_ARCH=slc6_amd64_gcc630;
 scram pro -n LLDJ_slc6_630_CMSSW_9_4_9_cand2 CMSSW CMSSW_9_4_9_cand2;
 cd LLDJ_slc6_630_CMSSW_9_4_9_cand2/src;
 cmsenv;


## CMSSW imports and customizations
 git cms-init --upstream-only
 #git cms-init <-Maybe need this instead of above
 git cms-merge-topic cms-egamma:EgammaID_949 #if you want the V2 IDs, otherwise skip
 git cms-merge-topic cms-egamma:EgammaPostRecoTools_940 #just adds in an extra file to have a setup function to make things  easier
 scramv1 build -j 20;
 #git cms-merge-topic cms-met:METFixEE2017_949 #haven't tried it, but was part of Tom's recipe
 #scramv1 build -j 20

## LLDJstandalones Framework checkout

# first fork the repository to make your own workspace
 git clone https://github.com/<mygithubusername>/LLDJstandalones.git;
 pushd LLDJstandalones;

 # If you want to check out a specific branch
 # git fetch origin
 # git branch -v -a # list branches available, find yours
 # git checkout -b NAMEOFBRANCH origin/NAMEOFBRANCH

 # add DisplacedHiggs as upstream
 git remote add upstream https://github.com/DisplacedHiggs/LLDJstandalones.git
 cd LLDJstandalones

# compile a clean area
 scramv1 build -j 10;

## Every time you log in
# set up some environment variables (bash)
 source LLDJstandalones/setup.sh
