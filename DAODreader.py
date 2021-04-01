import ROOT
ROOT.PyConfig.IgnoreCommandLineOptions = True
from argparse import ArgumentParser
from utils import readxAOD, DecayingParticle, MotherParticle, getDSID
from tqdm import tqdm
import logging


def getArguments():
    parser = ArgumentParser()
    parser.add_argument("input")
    parser.add_argument(
        "--weights", nargs="*", default=["nominal", "K010", "K040", "K100", "K130", "K160"]
    )
    parser.add_argument("--lowmass", action="store_true")
    parser.add_argument("--mass", type=int, default=0)
    parser.add_argument("-o", "--output", default="vlq_truth_histograms")
    return parser


def main():
    # get arguments from command line
    args = getArguments().parse_args()
    # get input tree
    t = readxAOD(args.input)
    # get weights to process
    weight_to_run = {i for i in args.weights}
    # reweight to lower mass point (- 100 GeV from original point)
    if args.lowmass:
        if args.mass == 1000:
            # stupid sorting issue: the weight "M900" is higher ranked as a string than "M1000"
            # therefore, the "low mass" weights are stored after the default weights
            weightmap_move = 132 - 1
        else:
            weightmap_move = 112 - 1
        mass_tag = "_lowmass"
        logging.info("Store the low mass points.")
    else:
        if args.mass == 1000:
            weightmap_move = 112 - 1
        else:
            weightmap_move = 132 - 1
        mass_tag = ""

    # Set the Histograms sets
    histset = {}
    for wtsuffix in weight_to_run:
        histset["mB" + wtsuffix] = ROOT.TH1D(
            "h_VLB_m_" + wtsuffix, "Mass of VLB", 116, 100.0, 3000.0
        )
        histset["ptB" + wtsuffix] = ROOT.TH1D(
            "h_VLB_pt_" + wtsuffix, "pT of VLB", 50, 0.0, 1000.0
        )
        histset["mH" + wtsuffix] = ROOT.TH1D(
            "h_H_m_" + wtsuffix, "Mass of Higgs", 30, 110.0, 140.0
        )
        histset["ptH" + wtsuffix] = ROOT.TH1D(
            "h_H_pt_" + wtsuffix, "pT of Higgs", 75, 0.0, 1500.0
        )
        histset["ptb" + wtsuffix] = ROOT.TH1D(
            "h_b_pt_" + wtsuffix, "pT of b-quark", 75, 0.0, 1500.0
        )
    for key in histset.keys():
        histset[key].Sumw2()

    # Set the weight map
    weightmap = {
        "nominal": weightmap_move * (-1), # should equal to 0
        "K010": 1,
        "K015": 2,
        "K020": 3,
        "K025": 4,
        "K030": 5,
        "K035": 6,
        "K040": 7,
        "K045": 8,
        "K050": 9,
        "K060": 10,
        "K070": 11,
        "K080": 12,
        "K090": 13,
        "K100": 14,
        "K110": 15,
        "K120": 16,
        "K130": 17,
        "K140": 18,
        "K150": 19,
        "K160": 20,
    }

    # b-quark parent analytics
    n_bparent = {
        '6000007': 0, # VLB
        '21': 0,      # gluon
        '23': 0,      # Z boson
        '24': 0,      # W boson
        '25': 0,      # Higgs
        '1': 0,       # quarks
        '2': 0,
        '3': 0,
        '4': 0,
        '5': 0,
        '6': 0
    }


    # loop over tree
    n_events = t.GetEntriesFast()
    for evnt in tqdm(range(n_events)):
        t.GetEntry(evnt)

        # get weight (using the weight dict defined previously)
        # the weight positions were determined using an AthAnalysis environment and checkMetaSG.py
        # to associate the weight positions to the weight name
        wt = {}
        for wtsuffix in weight_to_run:
            try:
                wt[wtsuffix] = t.EventInfo.mcEventWeights()[
                    weightmap[wtsuffix] + weightmap_move
                ]
                logging.debug(
                    "Event weight found. event = {evnt}, wt = {wt}".format(
                        evnt=evnt, wt=wt[wtsuffix]
                    )
                )
            except KeyError:
                wt[wtsuffix] = 1.0
                logging.warning(
                    "Event weight not found. event = {evnt}, wt = {wt}. Setting it to 1.0.".format(
                        evnt=evnt, wt=wt[wtsuffix]
                    )
                )

        ##################
        # find particles
        ##################

        decaying_B = None
        mother_H = None
        list_mother_b = []
        decaying_H = None
        list_decaying_b = []

        # loop over truth particles to find the VLB, Higgs, and b-quark
        for tp in t.TruthParticles:
            # # find VLB
            # if tp.absPdgId() == 6000007 and decaying_B == None:
            #     decaying_B = DecayingParticle(tp)
            #     # find Higgs and b-quark
            #     if decaying_B.child(0).pdgId() == 25:
            #         mother_H = decaying_B.child(0)
            #         mother_b = decaying_B.child(1)
            #         decaying_H = DecayingParticle(mother_H)
            #         decaying_b = DecayingParticle(mother_b)
            #     elif decaying_B.child(1).pdgId() == 25:
            #         mother_H = decaying_B.child(1)
            #         mother_b = decaying_B.child(0)
            #         decaying_H = DecayingParticle(mother_H)
            #         decaying_b = DecayingParticle(mother_b)
            #     else:
            #         logging.error("No VLB->bH decays found")
            #         decaying_B = None
            #         continue
       
            # for syntax including t-channel processes, there can also be no VLB in the truth record
            # therefore, we go through truth record and check for particles in the hard scattering
            # to identify the Higgs and the b-quark.
            # we consider particles with status 22 (intermediate particles with conserved masses)
            # and particles with status 23 (outgoing particles)
            # http://home.thep.lu.se/~torbjorn/pythia81html/ParticleProperties.html
            # https://twiki.cern.ch/twiki/bin/view/Main/PdgId
            if tp.status() == 22 and tp.absPdgId() == 25 and decaying_H == None and mother_H==None:
                mother_H = tp
                decaying_H = DecayingParticle(tp)
            if tp.status() == 23 and tp.absPdgId() == 5:
                # require that the b does not come from Higgs decay
                if tp.parent(0) and not (tp.parent(0).absPdgId() == 25):
                    list_mother_b.append(tp)
                    list_decaying_b.append(DecayingParticle(tp))

        # # check if Higgs is indeed decaying to a photon pair
        # if decaying_H.child(0).pdgId() != 22 or decaying_H.child(1).pdgId() != 22:
        #     logging.error(
        #         "Higgs is not decaying to gamma gamma! Event {evt}".format(evt=evt)
        #     )

        #########################
        # reconstruct kinematics
        #########################

        # reconstruct VLB and b-quark
        v_VLB = ROOT.TLorentzVector()
        v_b = ROOT.TLorentzVector()
        tp_b = None
        for mother_b, decaying_b in zip(list_mother_b, list_decaying_b):
            v_motherH = ROOT.TLorentzVector()
            v_motherb = ROOT.TLorentzVector()
            v_motherH.SetPtEtaPhiE(
                mother_H.pt(), mother_H.eta(), mother_H.phi(), mother_H.e()
            )
            v_motherb.SetPtEtaPhiE(
                mother_b.pt(), mother_b.eta(), mother_b.phi(), mother_b.e()
            )
            v_VLB_temp = ROOT.TLorentzVector()
            v_VLB_temp = v_motherH + v_motherb

            v_b_temp = ROOT.TLorentzVector()
            v_b_temp.SetPtEtaPhiE(
                decaying_b.pt(), decaying_b.eta(), decaying_b.phi(), decaying_b.e()
            )

            # consider as VLB mass maximum of Higgs + b quark mass
            if v_VLB_temp.M() > v_VLB.M():
                v_VLB = v_VLB_temp
                v_b = v_b_temp
                tp_b = mother_b

        # evaluate b-quark parents
        n_bparent[str(tp_b.parent(0).absPdgId())] += 1


        # reconstruct Higgs boson
        v_H = ROOT.TLorentzVector()
        v_H.SetPtEtaPhiE(
            decaying_H.pt(), decaying_H.eta(), decaying_H.phi(), decaying_H.e()
        )

        

        #########################
        # fill histograms
        #########################

        # fill Histograms with appropriate weights for reweighting
        for wtsuffix in weight_to_run:
            histset["mB" + wtsuffix].Fill(v_VLB.M() / 1000.0, wt[wtsuffix])
            histset["ptB" + wtsuffix].Fill(v_VLB.Pt() / 1000.0, wt[wtsuffix])
            histset["mH" + wtsuffix].Fill(v_H.M() / 1000.0, wt[wtsuffix])
            histset["ptH" + wtsuffix].Fill(v_H.Pt() / 1000.0, wt[wtsuffix])
            histset["ptb" + wtsuffix].Fill(v_b.Pt() / 1000.0, wt[wtsuffix])

    ############################
    # write histograms to file
    ############################
    dsid = getDSID(args.input)
    histfile = ROOT.TFile(args.output + '_dsid{dsid}'.format(dsid=dsid) + mass_tag + ".root", "RECREATE")
    histfile.cd()
    for key in histset.keys():
        histset[key].Write()
    histfile.Close()

    print(n_bparent)
    print('VLB: {0:.1f}%'.format(100.*n_bparent['6000007'] / n_events))
    print('gluon: {0:.1f}%'.format(100.*n_bparent['21'] / n_events))
    print('W/Z boson: {0:.1f}%'.format(100.*(n_bparent['23'] + n_bparent['24']) / n_events))
    print('light quarks: {0:.1f}%'.format(100.*(n_bparent['1'] + n_bparent['2'] + n_bparent['3'] + n_bparent['4']) / n_events))
    print('top quark: {0:.1f}%'.format(100.*n_bparent['6'] / n_events))

if __name__ == "__main__":
    main()
