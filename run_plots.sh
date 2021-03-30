#!/bin/bash

###################################################
# Validation plots
###################################################
# ZBHb mass 1000 GeV
DIR_VALIDATION_ZBHb_1000="$PWD/data/validation/ZBHb_1000"
PLOTDIR_VALIDATION_ZBHb_1000="$PWD/plots/validation/ZBHb_1000"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1000
python plot.py $DIR_VALIDATION_ZBHb_1000/vlq_truth_histograms_dsid101000_merged.root \
    --mass 1000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101000_merged ${PLOTDIR_VALIDATION_ZBHb_1000}

# ZBHb mass 1400 GeV
DIR_VALIDATION_ZBHb_1400="$PWD/data/validation/ZBHb_1400"
PLOTDIR_VALIDATION_ZBHb_1400="$PWD/plots/validation/ZBHb_1400"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_1400
python plot.py $DIR_VALIDATION_ZBHb_1400/vlq_truth_histograms_dsid101003_merged.root \
    --mass 1400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101003_merged ${PLOTDIR_VALIDATION_ZBHb_1400}

# ZBHb mass 2000 GeV
DIR_VALIDATION_ZBHb_2000="$PWD/data/validation/ZBHb_2000"
PLOTDIR_VALIDATION_ZBHb_2000="$PWD/plots/validation/ZBHb_2000"
mkdir -p $PLOTDIR_VALIDATION_ZBHb_2000
python plot.py $DIR_VALIDATION_ZBHb_2000/vlq_truth_histograms_dsid101006_merged.root \
    --mass 2000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101006_merged ${PLOTDIR_VALIDATION_ZBHb_2000}

# WBHb mass 1000 GeV
DIR_VALIDATION_WBHb_1000="$PWD/data/validation/WBHb_1000"
PLOTDIR_VALIDATION_WBHb_1000="$PWD/plots/validation/WBHb_1000"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1000
python plot.py $DIR_VALIDATION_WBHb_1000/vlq_truth_histograms_dsid101002.root \
    --mass 1000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101002 ${PLOTDIR_VALIDATION_WBHb_1000}

# WBHb mass 1400 GeV
DIR_VALIDATION_WBHb_1400="$PWD/data/validation/WBHb_1400"
PLOTDIR_VALIDATION_WBHb_1400="$PWD/plots/validation/WBHb_1400"
mkdir -p $PLOTDIR_VALIDATION_WBHb_1400
python plot.py $DIR_VALIDATION_WBHb_1400/vlq_truth_histograms_dsid101005.root \
    --mass 1400 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101005 ${PLOTDIR_VALIDATION_WBHb_1400}

# WBHb mass 2000 GeV
DIR_VALIDATION_WBHb_2000="$PWD/data/validation/WBHb_2000"
PLOTDIR_VALIDATION_WBHb_2000="$PWD/plots/validation/WBHb_2000"
mkdir -p $PLOTDIR_VALIDATION_WBHb_2000
python plot.py $DIR_VALIDATION_WBHb_2000/vlq_truth_histograms_dsid101008.root \
    --mass 2000 \
    --couplings K010 K040 K100 K130 K160 \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101008 ${PLOTDIR_VALIDATION_WBHb_2000}


###################################################
# Reweighting closure test
###################################################

# mass closure: ZBHb mass 1000 -> 900
DIR_CLOSURE_MASS_ZBHb_1000="$PWD/data/closure/mass/ZBHb_1000"
PLOTDIR_CLOSURE_MASS_ZBHb_1000="$PWD/plots/closure/mass/ZBHb_1000"
mkdir -p $PLOTDIR_CLOSURE_MASS_ZBHb_1000
python plot.py $DIR_CLOSURE_MASS_ZBHb_1000/vlq_truth_histograms_dsid101000_merged_lowmass.root \
    --mass 1000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_ZBHb_1000/vlq_truth_histograms_dsid101100_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101000_merged_lowmass ${PLOTDIR_CLOSURE_MASS_ZBHb_1000}

# mass closure: ZBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_ZBHb_1400="$PWD/data/closure/mass/ZBHb_1400"
PLOTDIR_CLOSURE_MASS_ZBHb_1400="$PWD/plots/closure/mass/ZBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_MASS_ZBHb_1400
python plot.py $DIR_CLOSURE_MASS_ZBHb_1400/vlq_truth_histograms_dsid101003_merged_lowmass.root \
    --mass 1400 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_ZBHb_1400/vlq_truth_histograms_dsid101103_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101003_merged_lowmass ${PLOTDIR_CLOSURE_MASS_ZBHb_1400}

# mass closure: ZBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_ZBHb_2000="$PWD/data/closure/mass/ZBHb_2000"
PLOTDIR_CLOSURE_MASS_ZBHb_2000="$PWD/plots/closure/mass/ZBHb_2000"
mkdir -p ${PLOTDIR_CLOSURE_MASS_ZBHb_2000}
python plot.py $DIR_CLOSURE_MASS_ZBHb_2000/vlq_truth_histograms_dsid101006_merged_lowmass.root \
    --mass 2000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_ZBHb_2000/vlq_truth_histograms_dsid101106_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101006_merged_lowmass ${PLOTDIR_CLOSURE_MASS_ZBHb_2000}


# mass closure: WBHb mass 1000 -> 900
DIR_CLOSURE_MASS_WBHb_1000="$PWD/data/closure/mass/WBHb_1000"
PLOTDIR_CLOSURE_MASS_WBHb_1000="$PWD/plots/closure/mass/WBHb_1000"
mkdir -p $PLOTDIR_CLOSURE_MASS_WBHb_1000
python plot.py $DIR_CLOSURE_MASS_WBHb_1000/vlq_truth_histograms_dsid101002_lowmass.root \
    --mass 1000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_WBHb_1000/vlq_truth_histograms_dsid101102.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101002_lowmass ${PLOTDIR_CLOSURE_MASS_WBHb_1000}

# mass closure: WBHb mass 1400 -> 1300
DIR_CLOSURE_MASS_WBHb_1400="$PWD/data/closure/mass/WBHb_1400"
PLOTDIR_CLOSURE_MASS_WBHb_1400="$PWD/plots/closure/mass/WBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_MASS_WBHb_1400
python plot.py $DIR_CLOSURE_MASS_WBHb_1400/vlq_truth_histograms_dsid101005_lowmass.root \
    --mass 1400 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_WBHb_1400/vlq_truth_histograms_dsid101105.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101005_lowmass ${PLOTDIR_CLOSURE_MASS_WBHb_1400}

# mass closure: WBHb mass 2000 -> 1900
DIR_CLOSURE_MASS_WBHb_2000="$PWD/data/closure/mass/WBHb_2000"
PLOTDIR_CLOSURE_MASS_WBHb_2000="$PWD/plots/closure/mass/WBHb_2000"
mkdir -p ${PLOTDIR_CLOSURE_MASS_WBHb_2000}
python plot.py $DIR_CLOSURE_MASS_WBHb_2000/vlq_truth_histograms_dsid101008_lowmass.root \
    --mass 2000 \
    --couplings K100 \
    --closure $DIR_CLOSURE_MASS_WBHb_2000/vlq_truth_histograms_dsid101108.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101008_lowmass ${PLOTDIR_CLOSURE_MASS_WBHb_2000}


# coupling closure: ZBHb mass 1400 kappa 1p0 -> 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLING_ZBHb_1400="$PWD/data/closure/couplings/ZBHb_1400"
PLOTDIR_CLOSURE_COUPLING_ZBHb_1400="$PWD/plots/closure/couplings/ZBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_COUPLING_ZBHb_1400
python plot.py $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid101003_merged.root \
    --couplings K010 K040 K130 K160 \
    --closure $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid101110_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid101113_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid101116_merged.root \
              $DIR_CLOSURE_COUPLING_ZBHb_1400/vlq_truth_histograms_dsid101119_merged.root \
    --process "ZBHb LH"
mv plots_vlq_truth_histograms_dsid101003_merged ${PLOTDIR_CLOSURE_COUPLING_ZBHb_1400}


# coupling closure: WBHb mass 1400 kappa 1p0 -> 0p1, 0p4, 1p3, 1p6
DIR_CLOSURE_COUPLING_WBHb_1400="$PWD/data/closure/couplings/WBHb_1400"
PLOTDIR_CLOSURE_COUPLING_WBHb_1400="$PWD/plots/closure/couplings/WBHb_1400"
mkdir -p $PLOTDIR_CLOSURE_COUPLING_WBHb_1400
python plot.py $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid101005.root \
    --couplings K010 K040 K130 K160 \
    --closure $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid101112.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid101115.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid101118.root \
              $DIR_CLOSURE_COUPLING_WBHb_1400/vlq_truth_histograms_dsid101121.root \
    --process "WBHb LH"
mv plots_vlq_truth_histograms_dsid101005 ${PLOTDIR_CLOSURE_COUPLING_WBHb_1400}
