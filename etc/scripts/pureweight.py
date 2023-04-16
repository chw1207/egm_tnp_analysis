import sys
import etc.inputs.tnpSampleDef as tnpSamples
from libPython.tnpClassUtils import mkdir
import libPython.puReweighter as pu

era = sys.argv[1] # UL2017
dirout = str(sys.argv[2]) # '/data4/chenghan/tnpTuples-unseedDiPhoHLT/UL2017_PU_Trees/'
puType = 0


samples = {}
if era == "UL2016preVFP":
    samples = tnpSamples.UL2016_preVFP
elif era == "UL2016postVFP":
    samples = tnpSamples.UL2016_postVFP
elif era == "UL2017":
    samples = tnpSamples.UL2017
elif era == "UL2018":
    samples = tnpSamples.UL2018
else:
    raise ValueError("Unknown era: {}. [UL2016preVFP, UL2016postVFP, UL2017, UL2018]".format(era))


for sName in samples.keys():    
    sample = samples[sName]
    if sample is None : 
        continue
    if not 'DY' in sName: 
        continue
    if not sample.isMC: 
        continue
    
    trees = {}
    trees['ele'] = 'tnpEleTrig'
    # trees['pho'] = 'tnpPhoIDs'
#    trees['rec'] = 'GsfElectronToSC'
    for tree in trees:
        mkdir(dirout)
        if   puType == 0 : sample.set_puTree( dirout + '%s_%s.pu.puTree.root'   % (sample.name,tree) )
        elif puType == 1 : sample.set_puTree( dirout + '%s_%s.nVtx.puTree.root' % (sample.name,tree) )
        elif puType == 2 : sample.set_puTree( dirout + '%s_%s.rho.puTree.root'  % (sample.name,tree) )
        sample.set_tnpTree(trees[tree]+'/fitter_tree')
        sample.dump()
        pu.reweight(sample, era, puType=puType, useCustomW=False)
    
