#!/bin/sh

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --checkBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --createBins
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --createHists
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --doFit

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --doFit --mcSig --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --doFit --altSig
python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --doFit --altBkg

python tnpEGM_fitter.py etc/config/settings_ele_UL2016_postVFP_HDalitz_misshits.py --flag passingMissHits --sumUp
