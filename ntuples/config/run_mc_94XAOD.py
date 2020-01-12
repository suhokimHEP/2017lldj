import FWCore.ParameterSet.Config as cms

##########################################################################################
# Setup

# this is the process run by cmsRun
process = cms.Process('LLDJ')
process.options = cms.untracked.PSet( allowUnscheduled = cms.untracked.bool(True) )

#Setup FWK for multithreaded
process.options.numberOfThreads=cms.untracked.uint32(4)
process.options.numberOfStreams=cms.untracked.uint32(0)
process.load("RecoTracker.TkNavigation.NavigationSchoolESProducer_cfi")

# log output
process.load('FWCore.MessageLogger.MessageLogger_cfi')
process.maxEvents = cms.untracked.PSet( input = cms.untracked.int32(-1) )  ## number of events -1 does all
process.MessageLogger.cerr.FwkReport.reportEvery = 100

# input files
process.source = cms.Source('PoolSource',
                            fileNames = cms.untracked.vstring(

#'root://cmsxrootd.fnal.gov//store/data/Run2017F/SinglePhoton/AOD/17Nov2017-v1/50000/B86B5B18-0EDF-E711-BEE1-02163E019E8F.root'<--data
#'root://cmsxrootd.fnal.gov//store/group/lpchbb/LLDJntuples/SUSYmodel/n3n2-n1-zll-hbb_mh200_pl10_ev100000/crab_CMSSW_9_4_12_n3n2-n1-zll-hbb_mchi200_pl10_ev100000_AODSIM_FNALLPCT3/191228_085527/0000/SUS-RunIIFall17DRPremix-00183_9.root' #<---amc2017DY
#'root://cmsxrootd.fnal.gov//store/group/lpchbb/LLDJntuples/SUSYmodel/n3n2-n1-zll-hbb_mh200_pl1000_ev100000/crab_CMSSW_9_4_12_n3n2-n1-zll-hbb_mchi200_pl1000_ev100000_AODSIM_FNALLPCT3/191228_085645/0000/SUS-RunIIFall17DRPremix-00183_6.root' #<---amc2017DY
#'root://cmsxrootd.fnal.gov//store/group/lpchbb/LLDJntuples/SUSYmodel/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_CMSSW_9_4_12_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_FNALLPCT3/191225_230707/0000/SUS-RunIIFall17DRPremix-00183_2.root' #<---amc2017DY
#'file:/uscms/home/skim2/nobackup/CMSSW_9_4_12_new2/src/SUS-RunIIFall17DRPremix-00183.root' #<---amc2017DY
#'root://cmsxrootd.fnal.gov//store/mc/RunIIFall17DRPremix/WJetsToLNu_TuneCP5_13TeV-madgraphMLM-pythia8/AODSIM/PU2017_94X_mc2017_realistic_v11-v2/40000/E852C6B8-349F-E811-B40F-24BE05C63631.root'
#'root://cmsxrootd.fnal.gov//store/mc/RunIIFall17DRPremix/ZH_HToBB_ZToLL_M125_13TeV_powheg_pythia8_TuneCP5Down/AODSIM/PU2017_94X_mc2017_realistic_v11-v2/60000/D85856D2-1C72-E811-BB88-A0369FD1EF00.root'
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_99.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_98.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_97.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_96.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_95.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_94.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_93.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_92.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_91.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_90.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_89.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_88.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_87.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_86.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_85.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_84.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_83.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_82.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_81.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_80.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_79.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_78.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_77.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_76.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_75.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_74.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_73.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_72.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_71.root',
'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_70.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_69.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_68.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_67.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_66.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_65.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_64.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_63.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_62.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_61.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_60.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_59.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_58.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_57.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_56.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_55.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_54.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_53.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_52.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_51.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_50.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_49.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_48.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_47.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_46.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_45.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_44.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_43.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_42.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_41.root',
#'root://cmsxrootd.fnal.gov//store/group/phys_exotica/jmao/aodsim/RunIISummer16/AODSIM/MSSM-1d-prod/n3n2-n1-zll-hbb_mh200_pl100_ev100000/crab_n3n2-n1-zll-hbb_mchi200_pl100_ev100000_AODSIM_CaltechT2/191006_183651/0000/SUS-RunIIFall17DRPremix-00183_40.root',
#'file:/eos/uscms/store/group/lpchbb/LLDJntuples/SUSYmodel/n3n2-n1-zll-hbb_mh200_pl1_ev10000/crab_CMSSW_9_4_12_n3n2-n1-zll-hbb_mchi200_pl1_ev10000_AODSIM_FNALLPCT3/200106_185343/0000/SUS-RunIIFall17DRPremix-00183_1.root'
#'file:/uscms/home/skim2/nobackup/CMSSW_9_4_12/src/SUS-RunIIFall17DRPremix-00183.root'
 ),
)

# output name
process.TFileService = cms.Service('TFileService', fileName = cms.string('lldjntuple_mc_AOD_real3.root'));


# cms geometry
#process.load('Configuration.StandardSequences.GeometryRecoDB_cff')
#process.load('Configuration.StandardSequences.MagneticField_AutoFromDBCurrent_cff')

# In EGamma POG PostRecoTools twiki, instead of two above
process.load("Configuration.Geometry.GeometryRecoDB_cff")
process.load("Configuration.StandardSequences.Services_cff")
process.load("Configuration.StandardSequences.MagneticField_cff")
process.load("Geometry.CaloEventSetup.CaloTowerConstituents_cfi")

# global tag
process.load('Configuration.StandardSequences.Services_cff')
process.load('Configuration.StandardSequences.FrontierConditions_GlobalTag_cff')
#process.GlobalTag.globaltag = '94X_mc2017_realistic_v12'
process.GlobalTag.globaltag = '94X_mc2017_realistic_v17'

## for AOD Photons
#from PhysicsTools.SelectorUtils.tools.vid_id_tools import *
#dataFormat = DataFormat.AOD
#switchOnVIDPhotonIdProducer(process, dataFormat)
#my_id_modules = ['RecoEgamma.PhotonIdentification.Identification.cutBasedPhotonID_Spring16_V2p2_cff']
#for idmod in my_id_modules:
#    setupAllVIDIdsInModule(process,idmod,setupVIDPhotonSelection) 

## for AOD Electrons
#switchOnVIDElectronIdProducer(process, dataFormat)
#my_id_modules = ['RecoEgamma.ElectronIdentification.Identification.cutBasedElectronID_Summer16_80X_V1_cff']
#for idmod in my_id_modules:
#    setupAllVIDIdsInModule(process,idmod,setupVIDElectronSelection)

## for JEC
## Load the corrections
#process.load('JetMETCorrections.Configuration.JetCorrectors_cff')
#
#
## Produce corrected jets collection
#process.ak4CaloCorrectedJets   = cms.EDProducer('CorrectedCaloJetProducer',
#    src         = cms.InputTag('ak4CaloJets'),
#    #L1(PU), L2L3(MCTruth), L2L3Residuals
#    correctors  = cms.VInputTag('ak4CaloL1FastL2L3ResidualCorrector')
#    #correctors  = cms.VInputTag('ak4CaloL1FastjetCorrector', 'ak4CaloL2L3Corrector', 'ak4CaloL2L3ResidualCorrector')
#    #correctors  = cms.VInputTag('ak4CaloL2L3Corrector')
#    )

# pat for trigger
process.load( 'PhysicsTools.PatAlgos.triggerLayer1.triggerProducer_cff' )

# pat for muons
process.load('PhysicsTools.PatAlgos.patSequences_cff')

from RecoEgamma.EgammaTools.EgammaPostRecoTools import setupEgammaPostRecoSeq
setupEgammaPostRecoSeq(process,
                       runVID=True,
                       era='2017-Nov17ReReco', 
		       isMiniAOD=False,
		       eleIDModules=['RecoEgamma.ElectronIdentification.Identification.cutBasedElectronID_Fall17_94X_V1_cff'])

# For AOD Track variables
process.MaterialPropagator = cms.ESProducer('PropagatorWithMaterialESProducer',
    ComponentName = cms.string('PropagatorWithMaterial'),
    Mass = cms.double(0.105),
    MaxDPhi = cms.double(1.6),
    PropagationDirection = cms.string('alongMomentum'),
    SimpleMagneticField = cms.string(''),
    ptMin = cms.double(-1.0),
    useRungeKutta = cms.bool(False)
)

process.TransientTrackBuilderESProducer = cms.ESProducer('TransientTrackBuilderESProducer',
    ComponentName = cms.string('TransientTrackBuilder')
)


#NTuplizer
process.lldjNtuple = cms.EDAnalyzer('lldjNtuple',

 doAOD                     = cms.bool(True),
 doMiniAOD                 = cms.bool(False),

 electronSrc               = cms.InputTag('selectedElectrons','','LLDJ'),
 rhoLabel                  = cms.InputTag('fixedGridRhoFastjetAll'),
 eleVetoIdMap              = cms.InputTag('egmGsfElectronIDs:cutBasedElectronID-Summer17-94X-V2-veto'),
 eleLooseIdMap             = cms.InputTag('egmGsfElectronIDs:cutBasedElectronID-Summer17-94X-V2-loose'),
 eleMediumIdMap            = cms.InputTag('egmGsfElectronIDs:cutBasedElectronID-Summer17-94X-V2-medium'),
 eleTightIdMap             = cms.InputTag('egmGsfElectronIDs:cutBasedElectronID-Summer17-94X-V2-tight'),
 eleHLTIdMap               = cms.InputTag('egmGsfElectronIDs:cutBasedElectronHLTPreselection-Summer17-V2'),

 rhoCentralLabel           = cms.InputTag('fixedGridRhoFastjetCentralNeutral'),
 pileupCollection          = cms.InputTag('slimmedAddPileupInfo'),
 AODpileupCollection       = cms.InputTag('addPileupInfo', '', 'HLT'),
 VtxLabel                  = cms.InputTag('offlineSlimmedPrimaryVertices'),
 triggerResults            = cms.InputTag('TriggerResults', '', 'HLT'),

 AODTriggerInputTag           = cms.InputTag("TriggerResults","","HLT"),
 AODTriggerEventInputTag      = cms.InputTag("hltTriggerSummaryAOD","","HLT"),

 beamspotLabel_            = cms.InputTag('offlineBeamSpot'),

 #ak4JetSrc                 = cms.InputTag('slimmedJets'),
 AODak4CaloJetsSrc         = cms.InputTag('ak4CaloJets' , '', 'RECO'),
 #AODak4CorrCaloJetsSrc     = cms.InputTag('ak4CaloCorrectedJets'),
 #AODak4PFJetsSrc           = cms.InputTag('ak4PFJets'   , '', 'RECO'),
 #AODak4PFJetsCHSSrc        = cms.InputTag('ak4PFJetsCHS', '', 'RECO'),
 #selectedPatJetsSrc        = cms.InputTag('selectedPatJets'),                                   
 AODVertexSrc              = cms.InputTag('offlinePrimaryVertices', '', 'RECO'),
 AODTrackSrc               = cms.InputTag('generalTracks', '', 'RECO'),
 vertexFitterConfig = cms.PSet(
        finder = cms.string('avf'),
        sigmacut = cms.double(10.),
        Tini = cms.double(256.),
        ratio = cms.double(0.25),
        ),

 patTriggerResults         = cms.InputTag('TriggerResults', '', 'PAT'),
 BadChargedCandidateFilter = cms.InputTag('BadChargedCandidateFilter'),
 BadPFMuonFilter           = cms.InputTag('BadPFMuonFilter'),
 #pfMETLabel                = cms.InputTag('slimmedMETs'),
 AODCaloMETlabel           = cms.InputTag('caloMet','','RECO'),    
 #AODpfChMETlabel           = cms.InputTag('pfChMet','','RECO'),    
 #AODpfMETlabel             = cms.InputTag('pfMet','','RECO'),  

 muonSrc                   = cms.InputTag('slimmedMuons'),
 muonAODSrc                = cms.InputTag('selectedPatMuons'),

 #photonSrc                 = cms.InputTag('selectedPhotons','','LLDJ'),
 #phoLooseIdMap             = cms.InputTag('egmPhotonIDs:cutBasedPhotonID-Spring15-25ns-V1-standalone-loose'),
 #phoMediumIdMap            = cms.InputTag('egmPhotonIDs:cutBasedPhotonID-Spring15-25ns-V1-standalone-medium'),
 #phoTightIdMap             = cms.InputTag('egmPhotonIDs:cutBasedPhotonID-Spring15-25ns-V1-standalone-tight'),
 #phoChargedIsolation       = cms.InputTag('photonIDValueMapProducer:phoChargedIsolation'),
 #phoNeutralHadronIsolation = cms.InputTag('photonIDValueMapProducer:phoNeutralHadronIsolation'),
 #phoPhotonIsolation        = cms.InputTag('photonIDValueMapProducer:phoPhotonIsolation'),
 #phoWorstChargedIsolation  = cms.InputTag('photonIDValueMapProducer:phoWorstChargedIsolation'),

 #photonAODSrc              = cms.InputTag('selectedPatPhotons'),
 photonAODSrc              = cms.InputTag('gedPhotons'),
 #AOD_phoLooseIdMap  = cms.InputTag("egmPhotonIDs:cutBasedPhotonID-Spring16-V2p2-loose"),
 #AOD_phoMediumIdMap = cms.InputTag("egmPhotonIDs:cutBasedPhotonID-Spring16-V2p2-medium"),
 #AOD_phoTightIdMap  = cms.InputTag("egmPhotonIDs:cutBasedPhotonID-Spring16-V2p2-tight"),
 #AOD_phoChargedIsolationMap       = cms.InputTag("photonIDValueMapProducer", "phoChargedIsolation"),
 #AOD_phoNeutralHadronIsolationMap = cms.InputTag("photonIDValueMapProducer", "phoNeutralHadronIsolation"),
 #AOD_phoPhotonIsolationMap        = cms.InputTag("photonIDValueMapProducer", "phoPhotonIsolation"),
 #AOD_phoWorstChargedIsolationMap  = cms.InputTag("photonIDValueMapProducer", "phoWorstChargedIsolation"),

 electronAODSrc = cms.InputTag("gedGsfElectrons"),
 #AOD_eleIdMap = cms.InputTag("egmGsfElectronIDs:cutBasedElectronHLTPreselection-Summer16-V1"),#doesn't work with AOD
 AOD_eleLooseIdMap = cms.InputTag("egmGsfElectronIDs:cutBasedElectronID-Fall17-94X-V1-loose"),
 AOD_eleMediumIdMap = cms.InputTag("egmGsfElectronIDs:cutBasedElectronID-Fall17-94X-V1-loose"),
 AOD_eleTightIdMap = cms.InputTag("egmGsfElectronIDs:cutBasedElectronID-Fall17-94X-V1-loose"),
 conversions  = cms.InputTag('allConversions'),                                    

 genParticleSrc    = cms.InputTag("genParticles"),
 ak4GenJetSrc    = cms.InputTag("ak4GenJets"),

 bits = cms.InputTag("TriggerResults","","HLT"),
 prescales = cms.InputTag("patTrigger"),
 objects = cms.InputTag("selectedPatTrigger"),

)

# Double check: this is to remove the OOT photons, which is causing a crash
#process.patCandidates.remove(process.patCandidateSummary)
process.patCandidatesTask.remove(process.makePatOOTPhotonsTask)
#process.selectedPatCandidates.remove(process.selectedPatCandidateSummary)
process.selectedPatCandidatesTask.remove(process.selectedPatOOTPhotons)
#process.cleanPatCandidates.remove(process.cleanPatCandidateSummary)

#builds Ntuple
process.p = cms.Path(
    process.egammaPostRecoSeq *
    #process.ak4CaloCorrectedJets *
    #process.ak4CaloL1FastL2L3ResidualCorrectorChain *
    process.particleFlowPtrs *
    process.patCandidates *
    process.selectedPatCandidates *
    process.lldjNtuple
    )

    #process.egmPhotonIDSequence *
#process.ep = cms.EndPath(process.out)
#print process.dumpPython()
#print process.egmGsfElectronIDSequence.dumpPython()

