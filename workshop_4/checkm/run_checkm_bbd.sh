#!/bin/bash
#SBATCH --time=60
#SBATCH --ntasks=6 --mem=10gb

echo "Starting checkm in $(pwd) at $(date)"

shopt -s expand_aliases
alias checkm='apptainer run -B /pvol/:/pvol /pvol/data/sif/checkm.sif checkm'

checkm lineage_wf bins_bbd out -t 4 -x fa -f checkm_results_bbd.txt

echo "Finished checkm in $(pwd) at $(date)"




# output:

#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  Bin Id                Marker lineage            # genomes   # markers   # marker sets    0     1    2   3   4   5+   Completeness   Contamination   Strain heterogeneity  
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#  contig_137      o__Cytophagales (UID2936)           47         454           336         9    438   7   0   0   0       97.62            1.64              14.29          
#  metabat.27      p__Cyanobacteria (UID2189)          82         579           450         12   564   3   0   0   0       97.50            0.67               0.00          
#  metabat.39        s__algicola (UID2846)             47         571           303        377   188   6   0   0   0       36.84            1.18               0.00          
#  metabat.47      o__Clostridiales (UID1120)         304         247           141        167    76   4   0   0   0       34.63            1.77               0.00          
#  metabat.6         k__Bacteria (UID3060)            138         338           246        230   108   0   0   0   0       30.28            0.00               0.00          
#  metabat.57         k__Bacteria (UID203)            5449        104            58         85    19   0   0   0   0       29.31            0.00               0.00          
#  metabat.40   c__Deltaproteobacteria (UID3216)       83         247           155        169    77   1   0   0   0       28.18            0.13               0.00          
#  metabat.36         k__Bacteria (UID203)            5449        104            58         87    17   0   0   0   0       23.28            0.00               0.00          
#  metabat.23      o__Clostridiales (UID1212)         172         263           149        198    65   0   0   0   0       22.60            0.00               0.00          
#  metabat.67         k__Bacteria (UID203)            5449        104            58         90    14   0   0   0   0       22.41            0.00               0.00          
#  metabat.12     p__Proteobacteria (UID3061)         115         395           260        284   111   0   0   0   0       22.16            0.00               0.00          
#  metabat.59         k__Bacteria (UID203)            5449        102            56         87    15   0   0   0   0       21.43            0.00               0.00          
#  metabat.68   c__Deltaproteobacteria (UID3216)       83         247           155        185    62   0   0   0   0       20.79            0.00               0.00          
#  metabat.66        k__Bacteria (UID3060)            138         338           246        261    77   0   0   0   0       19.32            0.00               0.00          
#  metabat.63         k__Bacteria (UID203)            5449        103            57         90    13   0   0   0   0       19.30            0.00               0.00          
#  metabat.21         k__Bacteria (UID203)            5449        104            58         91    13   0   0   0   0       18.97            0.00               0.00          
#  metabat.22         k__Bacteria (UID203)            5449        104            58         93    11   0   0   0   0       17.24            0.00               0.00          
#  metabat.65   c__Deltaproteobacteria (UID3218)       61         284           169        206    78   0   0   0   0       16.27            0.00               0.00          
#  metabat.17         k__Bacteria (UID203)            5449        104            58         89    15   0   0   0   0       13.24            0.00               0.00          
#  metabat.64         k__Bacteria (UID203)            5449        104            58         96    8    0   0   0   0       12.07            0.00               0.00          
#  metabat.13         k__Bacteria (UID203)            5449        103            58         96    7    0   0   0   0       12.07            0.00               0.00          
#  metabat.38        s__algicola (UID2846)             47         571           303        490    80   1   0   0   0       10.84            0.01               0.00          
#  metabat.44         k__Bacteria (UID203)            5449        104            58         97    7    0   0   0   0       10.50            0.00               0.00          
#  metabat.45         k__Bacteria (UID203)            5449        104            58         96    8    0   0   0   0       10.34            0.00               0.00          
#  metabat.7          k__Bacteria (UID203)            5449        104            58         96    8    0   0   0   0        9.64            0.00               0.00          
#  metabat.60         k__Bacteria (UID203)            5449        104            58         97    7    0   0   0   0        9.48            0.00               0.00          
#  metabat.2          k__Bacteria (UID203)            5449        102            56         96    6    0   0   0   0        8.93            0.00               0.00          
#  metabat.55         k__Bacteria (UID203)            5449        104            58         96    8    0   0   0   0        8.78            0.00               0.00          
#  metabat.15         k__Bacteria (UID203)            5449        104            58         98    6    0   0   0   0        8.62            0.00               0.00          
#  metabat.8              root (UID1)                 5656         56            24         54    2    0   0   0   0        8.33            0.00               0.00          
#  metabat.5         s__algicola (UID2846)             47         571           303        468   103   0   0   0   0        8.23            0.00               0.00          
#  metabat.9       o__Clostridiales (UID1212)         172         263           149        218    45   0   0   0   0        7.38            0.00               0.00          
#  metabat.46         k__Bacteria (UID203)            5449        104            58         95    9    0   0   0   0        6.90            0.00               0.00          
#  metabat.37         k__Bacteria (UID203)            5449        104            58         99    5    0   0   0   0        6.90            0.00               0.00          
#  metabat.31         k__Bacteria (UID203)            5449        104            58         99    5    0   0   0   0        6.90            0.00               0.00          
#  metabat.3          k__Bacteria (UID203)            5449        104            58        100    4    0   0   0   0        6.90            0.00               0.00          
#  metabat.34         k__Bacteria (UID203)            5449        104            58         97    7    0   0   0   0        5.17            0.00               0.00          
#  metabat.56             root (UID1)                 5656         56            24         55    1    0   0   0   0        4.17            0.00               0.00          
#  metabat.54             root (UID1)                 5656         56            24         55    1    0   0   0   0        4.17            0.00               0.00          
#  metabat.49             root (UID1)                 5656         56            24         55    1    0   0   0   0        4.17            0.00               0.00          
#  metabat.61             root (UID1)                 5656         56            24         54    2    0   0   0   0        2.08            0.00               0.00          
#  metabat.62         k__Bacteria (UID203)            5449        103            57        101    2    0   0   0   0        1.75            0.00               0.00          
#  metabat.69             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.58             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.53             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.52             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.51             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.50             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.48             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.43             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.42         k__Bacteria (UID203)            5449        104            58        104    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.41             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.4              root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.35             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.33             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.32             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.30             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.29             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.28             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.26             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.25             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.24             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.20             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.19             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.18             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.16             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.14             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.11             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.10             root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#  metabat.1              root (UID1)                 5656         56            24         56    0    0   0   0   0        0.00            0.00               0.00          
#----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

