#!/bin/bash

BASEDIR=${PWD}

# ###################################################
# # Validation of samples
# ###################################################

# ZBHb mass 800 GeV
DIR_VALIDATION_ZBHb_800="data/validation/ZBHb_800"
mkdir -p ${DIR_VALIDATION_ZBHb_800}
cd ${DIR_VALIDATION_ZBHb_800}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100025/DAOD_TRUTH1.mc16_13TeV.100025.211376.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100026/DAOD_TRUTH1.mc16_13TeV.100026.400359.root
hadd vlq_truth_histograms_dsid100025_merged.root vlq_truth_histograms_dsid100025.root vlq_truth_histograms_dsid100026.root
cd -

# ZBHb mass 1000 GeV
DIR_VALIDATION_ZBHb_1000="data/validation/ZBHb_1000"
mkdir -p ${DIR_VALIDATION_ZBHb_1000}
cd ${DIR_VALIDATION_ZBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100001/DAOD_TRUTH1.mc16_13TeV.100001.271498.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100002/DAOD_TRUTH1.mc16_13TeV.100002.205619.root
hadd vlq_truth_histograms_dsid100001_merged.root vlq_truth_histograms_dsid100001.root vlq_truth_histograms_dsid100002.root
cd -

# ZBHb mass 1200 GeV
DIR_VALIDATION_ZBHb_1200="data/validation/ZBHb_1200"
mkdir -p ${DIR_VALIDATION_ZBHb_1200}
cd ${DIR_VALIDATION_ZBHb_1200}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100003/DAOD_TRUTH1.mc16_13TeV.100003.260132.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100004/DAOD_TRUTH1.mc16_13TeV.100004.102576.root
hadd vlq_truth_histograms_dsid100003_merged.root vlq_truth_histograms_dsid100003.root vlq_truth_histograms_dsid100004.root
cd -

# ZBHb mass 1400 GeV
DIR_VALIDATION_ZBHb_1400="data/validation/ZBHb_1400"
mkdir -p ${DIR_VALIDATION_ZBHb_1400}
cd ${DIR_VALIDATION_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100005/DAOD_TRUTH1.mc16_13TeV.100005.192167.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100006/DAOD_TRUTH1.mc16_13TeV.100006.128176.root
hadd vlq_truth_histograms_dsid100005_merged.root vlq_truth_histograms_dsid100005.root vlq_truth_histograms_dsid100006.root
cd -

# ZBHb mass 1600 GeV
DIR_VALIDATION_ZBHb_1600="data/validation/ZBHb_1600"
mkdir -p ${DIR_VALIDATION_ZBHb_1600}
cd ${DIR_VALIDATION_ZBHb_1600}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100007/DAOD_TRUTH1.mc16_13TeV.100007.141115.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100008/DAOD_TRUTH1.mc16_13TeV.100008.145250.root
hadd vlq_truth_histograms_dsid100007_merged.root vlq_truth_histograms_dsid100007.root vlq_truth_histograms_dsid100008.root
cd -

# ZBHb mass 1800 GeV
DIR_VALIDATION_ZBHb_1800="data/validation/ZBHb_1800"
mkdir -p ${DIR_VALIDATION_ZBHb_1800}
cd ${DIR_VALIDATION_ZBHb_1800}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100009/DAOD_TRUTH1.mc16_13TeV.100009.213475.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100010/DAOD_TRUTH1.mc16_13TeV.100010.178328.root
hadd vlq_truth_histograms_dsid100009_merged.root vlq_truth_histograms_dsid100009.root vlq_truth_histograms_dsid100010.root
cd -

# ZBHb mass 2000 GeV
DIR_VALIDATION_ZBHb_2000="data/validation/ZBHb_2000"
mkdir -p ${DIR_VALIDATION_ZBHb_2000}
cd ${DIR_VALIDATION_ZBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100011/DAOD_TRUTH1.mc16_13TeV.100011.120351.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100012/DAOD_TRUTH1.mc16_13TeV.100012.117400.root
hadd vlq_truth_histograms_dsid100011_merged.root vlq_truth_histograms_dsid100011.root vlq_truth_histograms_dsid100012.root
cd -

# ZBHb mass 2200 GeV
DIR_VALIDATION_ZBHb_2200="data/validation/ZBHb_2200"
mkdir -p ${DIR_VALIDATION_ZBHb_2200}
cd ${DIR_VALIDATION_ZBHb_2200}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100013/DAOD_TRUTH1.mc16_13TeV.100013.213106.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100014/DAOD_TRUTH1.mc16_13TeV.100014.249187.root
hadd vlq_truth_histograms_dsid100013_merged.root vlq_truth_histograms_dsid100013.root vlq_truth_histograms_dsid100014.root
cd -

# ZBHb mass 2400 GeV
DIR_VALIDATION_ZBHb_2400="data/validation/ZBHb_2400"
mkdir -p ${DIR_VALIDATION_ZBHb_2400}
cd ${DIR_VALIDATION_ZBHb_2400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100015/DAOD_TRUTH1.mc16_13TeV.100015.274530.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100016/DAOD_TRUTH1.mc16_13TeV.100016.114240.root
hadd vlq_truth_histograms_dsid100015_merged.root vlq_truth_histograms_dsid100015.root vlq_truth_histograms_dsid100016.root
cd -

# WBHb mass 800 GeV
DIR_VALIDATION_WBHb_800="data/validation/WBHb_800"
mkdir -p ${DIR_VALIDATION_WBHb_800}
cd ${DIR_VALIDATION_WBHb_800}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100027/DAOD_TRUTH1.mc16_13TeV.100027.446662.root
cd -

# WBHb mass 1000 GeV
DIR_VALIDATION_WBHb_1000="data/validation/WBHb_1000"
mkdir -p ${DIR_VALIDATION_WBHb_1000}
cd ${DIR_VALIDATION_WBHb_1000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100017/DAOD_TRUTH1.mc16_13TeV.100017.177925.root
cd -

# WBHb mass 1200 GeV
DIR_VALIDATION_WBHb_1200="data/validation/WBHb_1200"
mkdir -p ${DIR_VALIDATION_WBHb_1200}
cd ${DIR_VALIDATION_WBHb_1200}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100018/DAOD_TRUTH1.mc16_13TeV.100018.110786.root
cd -

# WBHb mass 1400 GeV
DIR_VALIDATION_WBHb_1400="data/validation/WBHb_1400"
mkdir -p ${DIR_VALIDATION_WBHb_1400}
cd ${DIR_VALIDATION_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100019/DAOD_TRUTH1.mc16_13TeV.100019.154054.root
cd -

# WBHb mass 1600 GeV
DIR_VALIDATION_WBHb_1600="data/validation/WBHb_1600"
mkdir -p ${DIR_VALIDATION_WBHb_1600}
cd ${DIR_VALIDATION_WBHb_1600}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100020/DAOD_TRUTH1.mc16_13TeV.100020.175094.root
cd -

# WBHb mass 1800 GeV
DIR_VALIDATION_WBHb_1800="data/validation/WBHb_1800"
mkdir -p ${DIR_VALIDATION_WBHb_1800}
cd ${DIR_VALIDATION_WBHb_1800}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100021/DAOD_TRUTH1.mc16_13TeV.100021.210809.root
cd -

# WBHb mass 2000 GeV
DIR_VALIDATION_WBHb_2000="data/validation/WBHb_2000"
mkdir -p ${DIR_VALIDATION_WBHb_2000}
cd ${DIR_VALIDATION_WBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100022/DAOD_TRUTH1.mc16_13TeV.100022.217677.root
cd -

# WBHb mass 2200 GeV
DIR_VALIDATION_WBHb_2200="data/validation/WBHb_2200"
mkdir -p ${DIR_VALIDATION_WBHb_2200}
cd ${DIR_VALIDATION_WBHb_2200}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100023/DAOD_TRUTH1.mc16_13TeV.100023.106929.root
cd -

# WBHb mass 2400 GeV
DIR_VALIDATION_WBHb_2400="data/validation/WBHb_2400"
mkdir -p ${DIR_VALIDATION_WBHb_2400}
cd ${DIR_VALIDATION_WBHb_2400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100024/DAOD_TRUTH1.mc16_13TeV.100024.300289.root
cd -

# ###################################################
# # Reweighting closure tests
# ###################################################

# mass closure for ZBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_ZBHb_1400="data/closure/mass/ZBHb_1400"
mkdir -p ${DIR_CLOSURE_MASS_ZBHb_1400}
cd ${DIR_CLOSURE_MASS_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100005/DAOD_TRUTH1.mc16_13TeV.100005.192167.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100006/DAOD_TRUTH1.mc16_13TeV.100006.128176.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100100/DAOD_TRUTH1.mc16_13TeV.100100.124351.root --weights nominal
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100101/DAOD_TRUTH1.mc16_13TeV.100101.281944.root --weights nominal
hadd vlq_truth_histograms_dsid100005_merged_lowmass.root vlq_truth_histograms_dsid100005_lowmass.root vlq_truth_histograms_dsid100006_lowmass.root
hadd vlq_truth_histograms_dsid100100_merged.root vlq_truth_histograms_dsid100100.root vlq_truth_histograms_dsid100101.root
cd -

# mass closure for ZBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_ZBHb_2000="data/closure/mass/ZBHb_2000"
mkdir -p ${DIR_CLOSURE_MASS_ZBHb_2000}
cd ${DIR_CLOSURE_MASS_ZBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100011/DAOD_TRUTH1.mc16_13TeV.100011.120351.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100012/DAOD_TRUTH1.mc16_13TeV.100012.117400.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100103/DAOD_TRUTH1.mc16_13TeV.100103.341520.root --weights nominal
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100104/DAOD_TRUTH1.mc16_13TeV.100104.132696.root --weights nominal
hadd vlq_truth_histograms_dsid100011_merged_lowmass.root vlq_truth_histograms_dsid100011_lowmass.root vlq_truth_histograms_dsid100012_lowmass.root
hadd vlq_truth_histograms_dsid100103_merged.root vlq_truth_histograms_dsid100103.root vlq_truth_histograms_dsid100104.root
cd -

# mass closure for WBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_WBHb_1400="data/closure/mass/WBHb_1400"
mkdir -p ${DIR_CLOSURE_MASS_WBHb_1400}
cd ${DIR_CLOSURE_MASS_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100019/DAOD_TRUTH1.mc16_13TeV.100019.154054.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100102/DAOD_TRUTH1.mc16_13TeV.100102.345034.root --weights nominal
cd -

# mass closure for WBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_WBHb_2000="data/closure/mass/WBHb_2000"
mkdir -p ${DIR_CLOSURE_MASS_WBHb_2000}
cd ${DIR_CLOSURE_MASS_WBHb_2000}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100022/DAOD_TRUTH1.mc16_13TeV.100022.217677.root --weights nominal K100 --lowmass
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100105/DAOD_TRUTH1.mc16_13TeV.100105.169466.root --weights nominal
cd -

# coupling closure for ZBHb mass 1400, reweight from 1p0 to 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLINGS_ZBHb_1400="data/closure/couplings/ZBHb_1400"
mkdir -p ${DIR_CLOSURE_COUPLINGS_ZBHb_1400}
cd ${DIR_CLOSURE_COUPLINGS_ZBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100005/DAOD_TRUTH1.mc16_13TeV.100005.192167.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100006/DAOD_TRUTH1.mc16_13TeV.100006.128176.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100110/DAOD_TRUTH1.mc16_13TeV.100110.224269.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100111/DAOD_TRUTH1.mc16_13TeV.100111.209748.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100113/DAOD_TRUTH1.mc16_13TeV.100113.342106.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100114/DAOD_TRUTH1.mc16_13TeV.100114.311797.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100116/DAOD_TRUTH1.mc16_13TeV.100116.255348.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100117/DAOD_TRUTH1.mc16_13TeV.100117.253521.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100119/DAOD_TRUTH1.mc16_13TeV.100119.163232.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100120/DAOD_TRUTH1.mc16_13TeV.100120.134887.root --weights nominal 
hadd vlq_truth_histograms_dsid100005_merged.root vlq_truth_histograms_dsid100005.root vlq_truth_histograms_dsid100006.root
hadd vlq_truth_histograms_dsid100110_merged.root vlq_truth_histograms_dsid100110.root vlq_truth_histograms_dsid100111.root
hadd vlq_truth_histograms_dsid100113_merged.root vlq_truth_histograms_dsid100113.root vlq_truth_histograms_dsid100114.root
hadd vlq_truth_histograms_dsid100116_merged.root vlq_truth_histograms_dsid100116.root vlq_truth_histograms_dsid100117.root
hadd vlq_truth_histograms_dsid100119_merged.root vlq_truth_histograms_dsid100119.root vlq_truth_histograms_dsid100120.root
cd -

# coupling closure for WBHb mass 1400, reweight from 1p0 to 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLINGS_WBHb_1400="data/closure/couplings/WBHb_1400"
mkdir -p ${DIR_CLOSURE_COUPLINGS_WBHb_1400}
cd ${DIR_CLOSURE_COUPLINGS_WBHb_1400}
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100019/DAOD_TRUTH1.mc16_13TeV.100019.154054.root
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100112/DAOD_TRUTH1.mc16_13TeV.100112.341299.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100115/DAOD_TRUTH1.mc16_13TeV.100115.343982.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100118/DAOD_TRUTH1.mc16_13TeV.100118.108782.root --weights nominal 
python ${BASEDIR}/DAODreader.py /nfs/dust/atlas/user/pgadow/MC/TRUTH/100121/DAOD_TRUTH1.mc16_13TeV.100121.137351.root --weights nominal 
cd -
