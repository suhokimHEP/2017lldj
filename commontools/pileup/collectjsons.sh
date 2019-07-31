cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleEG_B/results/processedLumis.json                                                 DoubleEG_B.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleEG_C/results/processedLumis.json                                                 DoubleEG_C.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleEG_D/results/processedLumis.json                                                 DoubleEG_D.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleEG_E/results/processedLumis.json                                                 DoubleEG_E.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleEG_F/results/processedLumis.json                                                 DoubleEG_F.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleMuon_B/results/processedLumis.json                                               DoubleMuon_B.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleMuon_C/results/processedLumis.json                                               DoubleMuon_C.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleMuon_D/results/processedLumis.json                                               DoubleMuon_D.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleMuon_E/results/processedLumis.json                                               DoubleMuon_E.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_DoubleMuon_F/results/processedLumis.json                                               DoubleMuon_F.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_MuonEG_B/results/processedLumis.json                                                   MuonEG_B.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_MuonEG_C/results/processedLumis.json                                                   MuonEG_C.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_MuonEG_D/results/processedLumis.json                                                   MuonEG_D.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_MuonEG_E/results/processedLumis.json                                                   MuonEG_E.json    
cp   /uscms_data/d3/ddiaz/CRAB_2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/gitignore/2017_LLDJ/crabsubmits_2017_LLDJ/crab_Data_MuonEG_F/results/processedLumis.json                                                   MuonEG_F.json    




mergeJSON.py  DoubleEG_B.json DoubleEG_C.json DoubleEG_D.json DoubleEG_E.json DoubleEG_F.json --output=DoubleEG.json
mergeJSON.py  DoubleMuon_B.json DoubleMuon_C.json DoubleMuon_D.json DoubleMuon_E.json DoubleMuon_F.json  --output=DoubleMuon.json
mergeJSON.py  MuonEG_B.json MuonEG_C.json MuonEG_D.json MuonEG_E.json MuonEG_F.json --output=MuonEG.json
#mergeJSON.py  SinglePhoton_G.json SinglePhoton_H_2.json SinglePhoton_H_3.json  --output=SinglePhoton.json



















