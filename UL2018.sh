#!/bin/sh

# export PYTHONPATH=$PYTHONPATH:$CMSSW_BASE/src/egm_tnp_analysis
python etc/scripts/pureweight.py UL2018 /data4/chenghan/tnpTuples-unseedDiPhoHLT/UL2018_PU_Trees/

python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --checkBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --createBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --createHists
python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit

python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_ele_UL2018_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --sumUp