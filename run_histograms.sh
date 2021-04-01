#!/bin/bash

BASEDIR=${PWD}

##################################################
# Validation of samples
##################################################

# ZBHb mass 1000 GeV
DIR_VALIDATION_ZBHb_1000="data/validation/ZBHb_1000"
mkdir -p ${DIR_VALIDATION_ZBHb_1000}
cd ${DIR_VALIDATION_ZBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101000/DAOD_TRUTH1.mc16_13TeV.101000.332744.root --mass 1000
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101001/DAOD_TRUTH1.mc16_13TeV.101001.212404.root --mass 1000
hadd vlq_truth_histograms_dsid101000_merged.root vlq_truth_histograms_dsid101000.root vlq_truth_histograms_dsid101001.root
cd -

# ZBHb mass 1400 GeV
DIR_VALIDATION_ZBHb_1400="data/validation/ZBHb_1400"
mkdir -p ${DIR_VALIDATION_ZBHb_1400}
cd ${DIR_VALIDATION_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101003/DAOD_TRUTH1.mc16_13TeV.101003.459490.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101004/DAOD_TRUTH1.mc16_13TeV.101004.233452.root
hadd vlq_truth_histograms_dsid101003_merged.root vlq_truth_histograms_dsid101003.root vlq_truth_histograms_dsid101004.root
cd -

# ZBHb mass 2000 GeV
DIR_VALIDATION_ZBHb_2000="data/validation/ZBHb_2000"
mkdir -p ${DIR_VALIDATION_ZBHb_2000}
cd ${DIR_VALIDATION_ZBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101006/DAOD_TRUTH1.mc16_13TeV.101006.279275.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101007/DAOD_TRUTH1.mc16_13TeV.101007.253478.root
hadd vlq_truth_histograms_dsid101006_merged.root vlq_truth_histograms_dsid101006.root vlq_truth_histograms_dsid101007.root
cd -

# WBHb mass 1000 GeV
DIR_VALIDATION_WBHb_1000="data/validation/WBHb_1000"
mkdir -p ${DIR_VALIDATION_WBHb_1000}
cd ${DIR_VALIDATION_WBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101002/DAOD_TRUTH1.mc16_13TeV.101002.307871.root --mass 1000
cd -

# WBHb mass 1400 GeV
DIR_VALIDATION_WBHb_1400="data/validation/WBHb_1400"
mkdir -p ${DIR_VALIDATION_WBHb_1400}
cd ${DIR_VALIDATION_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101005/DAOD_TRUTH1.mc16_13TeV.101005.263693.root
cd -

# WBHb mass 2000 GeV
DIR_VALIDATION_WBHb_2000="data/validation/WBHb_2000"
mkdir -p ${DIR_VALIDATION_WBHb_2000}
cd ${DIR_VALIDATION_WBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101008/DAOD_TRUTH1.mc16_13TeV.101008.407815.root
cd -

##################################################
# Reweighting closure tests
##################################################

# mass closure for ZBHb mass 1000 -> 900
DIR_CLOSURE_MASS_ZBHb_1000="data/closure/mass/ZBHb_1000"
mkdir -p ${DIR_CLOSURE_MASS_ZBHb_1000}
cd ${DIR_CLOSURE_MASS_ZBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101000/DAOD_TRUTH1.mc16_13TeV.101000.332744.root --weights nominal K100 --lowmass --mass 1000
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101001/DAOD_TRUTH1.mc16_13TeV.101001.212404.root --weights nominal K100 --lowmass --mass 1000
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101100/DAOD_TRUTH1.mc16_13TeV.101100.409923.root --weights nominal --mass 1000
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101101/DAOD_TRUTH1.mc16_13TeV.101101.100441.root --weights nominal --mass 1000
hadd vlq_truth_histograms_dsid101000_merged_lowmass.root vlq_truth_histograms_dsid101000_lowmass.root vlq_truth_histograms_dsid101001_lowmass.root
hadd vlq_truth_histograms_dsid101100_merged.root vlq_truth_histograms_dsid101100.root vlq_truth_histograms_dsid101101.root
cd -

# mass closure for ZBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_ZBHb_1400="data/closure/mass/ZBHb_1400"
mkdir -p ${DIR_CLOSURE_MASS_ZBHb_1400}
cd ${DIR_CLOSURE_MASS_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101003/DAOD_TRUTH1.mc16_13TeV.101003.459490.root --weights nominal K100 --lowmass 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101004/DAOD_TRUTH1.mc16_13TeV.101004.233452.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101103/DAOD_TRUTH1.mc16_13TeV.101103.283455.root --weights nominal
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101104/DAOD_TRUTH1.mc16_13TeV.101104.248592.root --weights nominal
hadd vlq_truth_histograms_dsid101003_merged_lowmass.root vlq_truth_histograms_dsid101003_lowmass.root vlq_truth_histograms_dsid101004_lowmass.root
hadd vlq_truth_histograms_dsid101103_merged.root vlq_truth_histograms_dsid101103.root vlq_truth_histograms_dsid101104.root
cd -

# mass closure for ZBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_ZBHb_2000="data/closure/mass/ZBHb_2000"
mkdir -p ${DIR_CLOSURE_MASS_ZBHb_2000}
cd ${DIR_CLOSURE_MASS_ZBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101006/DAOD_TRUTH1.mc16_13TeV.101006.279275.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101007/DAOD_TRUTH1.mc16_13TeV.101007.253478.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101106/DAOD_TRUTH1.mc16_13TeV.101106.189360.root --weights nominal
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101107/DAOD_TRUTH1.mc16_13TeV.101107.255708.root --weights nominal
hadd vlq_truth_histograms_dsid101006_merged_lowmass.root vlq_truth_histograms_dsid101006_lowmass.root vlq_truth_histograms_dsid101007_lowmass.root
hadd vlq_truth_histograms_dsid101106_merged.root vlq_truth_histograms_dsid101106.root vlq_truth_histograms_dsid101107.root
cd -


# mass closure for WBHb mass 1000 -> 900
DIR_CLOSURE_MASS_WBHb_1000="data/closure/mass/WBHb_1000"
mkdir -p ${DIR_CLOSURE_MASS_WBHb_1000}
cd ${DIR_CLOSURE_MASS_WBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101002/DAOD_TRUTH1.mc16_13TeV.101002.307871.root --weights nominal K100 --lowmass --mass 1000
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101102/DAOD_TRUTH1.mc16_13TeV.101102.282650.root --weights nominal --mass 1000
cd -

# mass closure for WBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_WBHb_1400="data/closure/mass/WBHb_1400"
mkdir -p ${DIR_CLOSURE_MASS_WBHb_1400}
cd ${DIR_CLOSURE_MASS_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101005/DAOD_TRUTH1.mc16_13TeV.101005.263693.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101105/DAOD_TRUTH1.mc16_13TeV.101105.388646.root --weights nominal
cd -

# mass closure for WBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_WBHb_2000="data/closure/mass/WBHb_2000"
mkdir -p ${DIR_CLOSURE_MASS_WBHb_2000}
cd ${DIR_CLOSURE_MASS_WBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101008/DAOD_TRUTH1.mc16_13TeV.101008.407815.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101108/DAOD_TRUTH1.mc16_13TeV.101108.466093.root --weights nominal
cd -


coupling closure for ZBHb mass 1400, reweight from 1p0 to 0p1, 0p4, 1p3, 1p6
BASEDIR=${PWD}
DIR_CLOSURE_COUPLINGS_ZBHb_1400="data/closure/couplings/ZBHb_1400"
mkdir -p ${DIR_CLOSURE_COUPLINGS_ZBHb_1400}
cd ${DIR_CLOSURE_COUPLINGS_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101003/DAOD_TRUTH1.mc16_13TeV.101003.459490.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101004/DAOD_TRUTH1.mc16_13TeV.101004.233452.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101110/DAOD_TRUTH1.mc16_13TeV.101110.395743.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101111/DAOD_TRUTH1.mc16_13TeV.101111.169984.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101113/DAOD_TRUTH1.mc16_13TeV.101113.203443.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101114/DAOD_TRUTH1.mc16_13TeV.101114.208470.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101116/DAOD_TRUTH1.mc16_13TeV.101116.279460.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101117/DAOD_TRUTH1.mc16_13TeV.101117.466798.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101119/DAOD_TRUTH1.mc16_13TeV.101119.243861.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101120/DAOD_TRUTH1.mc16_13TeV.101120.407879.root --weights nominal 
hadd vlq_truth_histograms_dsid101003_merged.root vlq_truth_histograms_dsid101003.root vlq_truth_histograms_dsid101004.root
hadd vlq_truth_histograms_dsid101110_merged.root vlq_truth_histograms_dsid101110.root vlq_truth_histograms_dsid101111.root
hadd vlq_truth_histograms_dsid101113_merged.root vlq_truth_histograms_dsid101113.root vlq_truth_histograms_dsid101114.root
hadd vlq_truth_histograms_dsid101116_merged.root vlq_truth_histograms_dsid101116.root vlq_truth_histograms_dsid101117.root
hadd vlq_truth_histograms_dsid101119_merged.root vlq_truth_histograms_dsid101119.root vlq_truth_histograms_dsid101120.root
cd -

# coupling closure for WBHb mass 1400, reweight from 1p0 to 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLINGS_WBHb_1400="data/closure/couplings/WBHb_1400"
mkdir -p ${DIR_CLOSURE_COUPLINGS_WBHb_1400}
cd ${DIR_CLOSURE_COUPLINGS_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101005/DAOD_TRUTH1.mc16_13TeV.101005.263693.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101112/DAOD_TRUTH1.mc16_13TeV.101112.223259.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101115/DAOD_TRUTH1.mc16_13TeV.101115.300223.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101118/DAOD_TRUTH1.mc16_13TeV.101118.170145.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/101121/DAOD_TRUTH1.mc16_13TeV.101121.441100.root --weights nominal 
cd -
