#!/bin/bash

# setup ATLAS software
export ATLAS_LOCAL_ROOT_BASE=/cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase
source /cvmfs/atlas.cern.ch/repo/ATLASLocalRootBase/user/atlasLocalSetup.sh

# setup AthAnalysis to check metadata of DxAODs using checkMetaSG.py
# asetup 21.2,AthAnalysis,latest

# setup AnalysisBase to make histograms and plots (default)
asetup 21.2,AnalysisBase,latest
