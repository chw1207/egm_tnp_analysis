#!/bin/sh

python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --checkBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --createBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --createHists
python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit

python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_ele_UL2017_DiPhoHLTUnSeed.py --flag passingDiPhoHLTUnSeed --sumUp