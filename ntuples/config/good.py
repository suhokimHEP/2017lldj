if __name__ == '__main__':

    from CRABAPI.RawCommand import crabCommand
    from httplib import HTTPException

    from CRABClient.UserUtilities import config
    config = config()
    
    from multiprocessing import Process

    # Common configuration

    config.General.workArea           = 'crabsubmits_Dileppt'
    config.General.transferLogs       = False
    config.JobType.pluginName         = 'Analysis' # PrivateMC
    config.JobType.psetName           = 'run_data_94XAOD.py'
    #config.JobType.inputFiles         = [INPUTFILES]
    config.JobType.allowUndistributedCMSSW = True
    config.JobType.sendExternalFolder = True
    config.JobType.maxMemoryMB        = 3000
    #config.JobType.maxJobRuntimeMin   = MAXTM
    config.JobType.numCores           = 4
    #config.JobType.priority           = 50 # default=10, first 10 jobs=20
    config.Data.inputDBS              = 'global'    
    config.Data.splitting             = 'Automatic' # 'LumiBased' EventBased, FileBased, LumiBased (1 lumi ~= 300 events)
    config.Data.totalUnits            = 400000
    config.Data.publication           = False
    #config.Data.publication           = True
    #config.Data.publishWithGroupName  = True
    config.Site.storageSite           = 'T3_US_FNALLPC'

    #config.Data.useParent             = True
    config.Data.ignoreLocality         = True
    config.Site.whitelist = ["T2_US*"]

    def submit(config):
        try:
            crabCommand('submit', config = config)
            #crabCommand('submit', config = config, dryrun=True)
        except HTTPException, hte:
            print hte.headers

    # dataset dependent configuration

    config.General.requestName = 'Data_DoubleEG_B'
    config.Data.unitsPerJob    = 180
    config.Data.inputDataset   = '/DoubleEG/Run2017B-17Nov2017-v1/AOD'
    config.Data.lumiMask = '/uscms/home/skim2/nobackup/2017-LLDJ_slc7_630_CMSSW_9_4_10/src/2017lldj/ntuples/config/jsons/Cert_294927-306462_13TeV_PromptReco_Collisions17_JSON.txt'
    config.Data.outLFNDirBase  = '/store/group/lpchbb/LLDJntuples/Dileppt'
    p = Process(target=submit, args=(config,))
    p.start()
    p.join()

