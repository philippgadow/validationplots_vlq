# VLQ B->H(yy)b job option validation

## How to generate TRUTH derivations from EVNT files from JOs?

Consider [https://github.com/philippgadow/vlq_newrelease](https://github.com/philippgadow/vlq_newrelease)


## Validation plots for VLQ job options

This python code enables the creation of histograms and plots for the validation of the job options for generating vector-like quarks (VLQs).

### Input files

The input to the scripts are `TRUTH0` or `TRUTH1` derivations (with an unbroken truth record).

### Output histograms

The output of the scripts are histograms showing distributions of 

- transverse momentum of Higgs boson
- mass of Higgs boson
- transverse momentum of VLQ
- mass of VLQ


### Create ROOT files

```
source setup_release.sh
bash run_histograms.sh
```


### Create plots 

Consider using a fresh shell with no AnalysisRelease set up for this step.
Also, this is most fun with python3 as your default python.

```
source setup_venv.sh
bash run_plots.sh
```

You can find your new favourite plots in `plots`.
