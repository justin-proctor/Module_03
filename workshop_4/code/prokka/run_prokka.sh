#!/bin/bash
#SBATCH --time=60
#SBATCH --ntasks=2 --mem=2gb

echo "Starting prokka in $(pwd) at $(date)"

shopt -s expand_aliases
alias prokka='apptainer run -B /pvol/:/pvol /pvol/data/sif/prokka.sif prokka'

while read bin;do 
  prokka --outdir $bin --prefix $bin "../metabat/bins_bbd/${bin}.fa";
done < ../checkm/bbd_topbins.txt

echo "Finished prokka in $(pwd) at $(date)"




# contig_137 output:

#organism: Genus species strain 
#contigs: 1
#bases: 4706700
#CDS: 3913
#CRISPR: 3
#rRNA: 4
#tRNA: 46
#tmRNA: 1