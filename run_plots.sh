#!/bin/bash

###################################################
# Validation plots
###################################################

# ZBHb mass 800 GeV
DIR_VALIDATION_ZBHb_800="$PWD/data/validation/ZBHb_800"
PLOTDIR_VALIDATION_ZBHb_800="$PWD/plots/validation/ZBHb_800"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_800
python plot.py $DIR_VALIDATION_ZBHb_800/vlq_truth_histograms_dsid100025_merged.root \
    --mass 800 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100025_merged ${PLOTDIR_VALIDATION_ZBHb_800}

# ZBHb mass 1000 GeV
DIR_VALIDATION_ZBHb_1000="$PWD/data/validation/ZBHb_1000"
PLOTDIR_VALIDATION_ZBHb_1000="$PWD/plots/validation/ZBHb_1000"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1000
python plot.py $DIR_VALIDATION_ZBHb_1000/vlq_truth_histograms_dsid100001_merged.root \
    --mass 1000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100001_merged ${PLOTDIR_VALIDATION_ZBHb_1000}

# ZBHb mass 1200 GeV
DIR_VALIDATION_ZBHb_1200="$PWD/data/validation/ZBHb_1200"
PLOTDIR_VALIDATION_ZBHb_1200="$PWD/plots/validation/ZBHb_1200"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1200
python plot.py $DIR_VALIDATION_ZBHb_1200/vlq_truth_histograms_dsid100003_merged.root \
    --mass 1200 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100003_merged ${PLOTDIR_VALIDATION_ZBHb_1200}

# ZBHb mass 1400 GeV
DIR_VALIDATION_ZBHb_1400="$PWD/data/validation/ZBHb_1400"
PLOTDIR_VALIDATION_ZBHb_1400="$PWD/plots/validation/ZBHb_1400"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1400
python plot.py $DIR_VALIDATION_ZBHb_1400/vlq_truth_histograms_dsid100005_merged.root \
    --mass 1400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100005_merged ${PLOTDIR_VALIDATION_ZBHb_1400}

# ZBHb mass 1600 GeV
DIR_VALIDATION_ZBHb_1600="$PWD/data/validation/ZBHb_1600"
PLOTDIR_VALIDATION_ZBHb_1600="$PWD/plots/validation/ZBHb_1600"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1600
python plot.py $DIR_VALIDATION_ZBHb_1600/vlq_truth_histograms_dsid100007_merged.root \
    --mass 1600 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100007_merged ${PLOTDIR_VALIDATION_ZBHb_1600}

# ZBHb mass 1800 GeV
DIR_VALIDATION_ZBHb_1800="$PWD/data/validation/ZBHb_1800"
PLOTDIR_VALIDATION_ZBHb_1800="$PWD/plots/validation/ZBHb_1800"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1800
python plot.py $DIR_VALIDATION_ZBHb_1800/vlq_truth_histograms_dsid100009_merged.root \
    --mass 1800 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100009_merged ${PLOTDIR_VALIDATION_ZBHb_1800}

# ZBHb mass 2000 GeV
DIR_VALIDATION_ZBHb_2000="$PWD/data/validation/ZBHb_2000"
PLOTDIR_VALIDATION_ZBHb_2000="$PWD/plots/validation/ZBHb_2000"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_2000
python plot.py $DIR_VALIDATION_ZBHb_2000/vlq_truth_histograms_dsid100011_merged.root \
    --mass 2000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100011_merged ${PLOTDIR_VALIDATION_ZBHb_2000}

# ZBHb mass 2200 GeV
DIR_VALIDATION_ZBHb_2200="$PWD/data/validation/ZBHb_2200"
PLOTDIR_VALIDATION_ZBHb_2200="$PWD/plots/validation/ZBHb_2200"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_2200
python plot.py $DIR_VALIDATION_ZBHb_2200/vlq_truth_histograms_dsid100013_merged.root \
    --mass 2200 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100013_merged ${PLOTDIR_VALIDATION_ZBHb_2200}

# ZBHb mass 2400 GeV
DIR_VALIDATION_ZBHb_2400="$PWD/data/validation/ZBHb_2400"
PLOTDIR_VALIDATION_ZBHb_2400="$PWD/plots/validation/ZBHb_2400"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_2400
python plot.py $DIR_VALIDATION_ZBHb_2400/vlq_truth_histograms_dsid100015_merged.root \
    --mass 2400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100015_merged ${PLOTDIR_VALIDATION_ZBHb_2400}

# WBHb mass 800 GeV
DIR_VALIDATION_WBHb_800="$PWD/data/validation/WBHb_800"
PLOTDIR_VALIDATION_WBHb_800="$PWD/plots/validation/WBHb_800"
mkdir -p $PLOTDIR_VALIDATION_WBHb_800
python plot.py $DIR_VALIDATION_WBHb_800/vlq_truth_histograms_dsid100027.root \
    --mass 800 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100027 ${PLOTDIR_VALIDATION_WBHb_800}

# WBHb mass 1000 GeV
DIR_VALIDATION_WBHb_1000="$PWD/data/validation/WBHb_1000"
PLOTDIR_VALIDATION_WBHb_1000="$PWD/plots/validation/WBHb_1000"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1000
python plot.py $DIR_VALIDATION_WBHb_1000/vlq_truth_histograms_dsid100017.root \
    --mass 1000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100017 ${PLOTDIR_VALIDATION_WBHb_1000}

# WBHb mass 1200 GeV
DIR_VALIDATION_WBHb_1200="$PWD/data/validation/WBHb_1200"
PLOTDIR_VALIDATION_WBHb_1200="$PWD/plots/validation/WBHb_1200"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1200
python plot.py $DIR_VALIDATION_WBHb_1200/vlq_truth_histograms_dsid100018.root \
    --mass 1200 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100018 ${PLOTDIR_VALIDATION_WBHb_1200}

# WBHb mass 1400 GeV
DIR_VALIDATION_WBHb_1400="$PWD/data/validation/WBHb_1400"
PLOTDIR_VALIDATION_WBHb_1400="$PWD/plots/validation/WBHb_1400"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1400
python plot.py $DIR_VALIDATION_WBHb_1400/vlq_truth_histograms_dsid100019.root \
    --mass 1400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100019 ${PLOTDIR_VALIDATION_WBHb_1400}

# WBHb mass 1600 GeV
DIR_VALIDATION_WBHb_1600="$PWD/data/validation/WBHb_1600"
PLOTDIR_VALIDATION_WBHb_1600="$PWD/plots/validation/WBHb_1600"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1600
python plot.py $DIR_VALIDATION_WBHb_1600/vlq_truth_histograms_dsid100020.root \
    --mass 1600 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100020 ${PLOTDIR_VALIDATION_WBHb_1400}

# WBHb mass 1800 GeV
DIR_VALIDATION_WBHb_1800="$PWD/data/validation/WBHb_1800"
PLOTDIR_VALIDATION_WBHb_1800="$PWD/plots/validation/WBHb_1800"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1800
python plot.py $DIR_VALIDATION_WBHb_1800/vlq_truth_histograms_dsid100021.root \
    --mass 1800 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100021 ${PLOTDIR_VALIDATION_WBHb_1800}

# WBHb mass 2000 GeV
DIR_VALIDATION_WBHb_2000="$PWD/data/validation/WBHb_2000"
PLOTDIR_VALIDATION_WBHb_2000="$PWD/plots/validation/WBHb_2000"
mkdir -p $PLOTDIR_VALIDATION_WBHb_2000
python plot.py $DIR_VALIDATION_WBHb_2000/vlq_truth_histograms_dsid100022.root \
    --mass 2000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100022 ${PLOTDIR_VALIDATION_WBHb_2000}

# WBHb mass 2200 GeV
DIR_VALIDATION_WBHb_2200="$PWD/data/validation/WBHb_2200"
PLOTDIR_VALIDATION_WBHb_2200="$PWD/plots/validation/WBHb_2200"
mkdir -p $PLOTDIR_VALIDATION_WBHb_2200
python plot.py $DIR_VALIDATION_WBHb_2200/vlq_truth_histograms_dsid100023.root \
    --mass 2200 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100023 ${PLOTDIR_VALIDATION_WBHb_2200}

# WBHb mass 2400 GeV
DIR_VALIDATION_WBHb_2400="$PWD/data/validation/WBHb_2400"
PLOTDIR_VALIDATION_WBHb_2400="$PWD/plots/validation/WBHb_2400"
mkdir -p $PLOTDIR_VALIDATION_WBHb_2400
python plot.py $DIR_VALIDATION_WBHb_2400/vlq_truth_histograms_dsid100024.root \
    --mass 2400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100024 ${PLOTDIR_VALIDATION_WBHb_2400}


###################################################
# Reweighting closure test
###################################################

# mass closure: ZBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_ZBHb_1400="$PWD/data/closure/mass/ZBHb_1400"
PLOTDIR_CLOSURE_MASS_ZBHb_1400="$PWD/plots/closure/mass/ZBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_MASS_ZBHb_1400
python plot.py $DIR_CLOSURE_MASS_ZBHb_1400/vlq_truth_histograms_dsid100005_merged_lowmass.root \
    --mass 1400 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_ZBHb_1400/vlq_truth_histograms_dsid100100_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100005_merged_lowmass ${PLOTDIR_CLOSURE_MASS_ZBHb_1400}

# mass closure: ZBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_ZBHb_2000="$PWD/data/closure/mass/ZBHb_2000"
PLOTDIR_CLOSURE_MASS_ZBHb_2000="$PWD/plots/closure/mass/ZBHb_2000"
mkdir -p ${PLOTDIR_CLOSURE_MASS_ZBHb_2000}
python plot.py $DIR_CLOSURE_MASS_ZBHb_2000/vlq_truth_histograms_dsid100011_merged_lowmass.root \
    --mass 2000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_ZBHb_2000/vlq_truth_histograms_dsid100103_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100011_merged_lowmass ${PLOTDIR_CLOSURE_MASS_ZBHb_2000}

# mass closure: WBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_WBHb_1400="$PWD/data/closure/mass/WBHb_1400"
PLOTDIR_CLOSURE_MASS_WBHb_1400="$PWD/plots/closure/mass/WBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_MASS_WBHb_1400
python plot.py $DIR_CLOSURE_MASS_WBHb_1400/vlq_truth_histograms_dsid100019_lowmass.root \
    --mass 1400 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_WBHb_1400/vlq_truth_histograms_dsid100102.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100019_lowmass ${PLOTDIR_CLOSURE_MASS_WBHb_1400}

# mass closure: WBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_WBHb_2000="$PWD/data/closure/mass/WBHb_2000"
PLOTDIR_CLOSURE_MASS_WBHb_2000="$PWD/plots/closure/mass/WBHb_2000"
mkdir -p ${PLOTDIR_CLOSURE_MASS_WBHb_2000}
python plot.py $DIR_CLOSURE_MASS_WBHb_2000/vlq_truth_histograms_dsid100022_lowmass.root \
    --mass 2000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_WBHb_2000/vlq_truth_histograms_dsid100105.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100022_lowmass ${PLOTDIR_CLOSURE_MASS_WBHb_2000}


# coupling closure: ZBHb mass 1400 kappa 1p0 -> 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLING_ZBHb_1400="$PWD/data/closure/couplings/ZBHb_1400"
PLOTDIR_CLOSURE_COUPLING_ZBHb_1400="$PWD/plots/closure/couplings/ZBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_COUPLING_ZBHb_1400
python plot.py $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid100005_merged.root \
    --couplings K010 K040 K130 K160 \
    --closure $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid100110_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid100113_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid100116_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid100119_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid100005_merged ${PLOTDIR_CLOSURE_COUPLING_ZBHb_1400}


# coupling closure: WBHb mass 1400 kappa 1p0 -> 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLING_WBHb_1400="$PWD/data/closure/couplings/WBHb_1400"
PLOTDIR_CLOSURE_COUPLING_WBHb_1400="$PWD/plots/closure/couplings/WBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_COUPLING_WBHb_1400
python plot.py $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid100019.root \
    --couplings K010 K040 K130 K160 \
    --closure $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid100112.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid100115.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid100118.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid100121.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid100019 ${PLOTDIR_CLOSURE_COUPLING_WBHb_1400}
