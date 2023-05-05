#!/bin/sh

export PYTHONPATH=$PYTHONPATH:$CMSSW_BASE/src/egm_tnp_analysis
# python etc/scripts/pureweight.py UL2016preVFP /data4/chenghan/tnpTuples-seedDiPhoHLT/UL2016preVFP_PU_Trees/

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --checkBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --createBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --createHists
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --doFit

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_preVFP_DiPhoHLTSeed.py --flag passingDiPhoHLTSeed --sumUp