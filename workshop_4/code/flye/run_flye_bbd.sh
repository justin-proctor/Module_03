#!/bin/bash
#SBATCH --time=720
#SBATCH --ntasks=12 --mem=10gb

echo "Starting flye bbd in $(pwd) at $(date)"

flye --nano-hq ../bbd_0.1.fastq.gz --threads 12 --out-dir bbd --meta

echo "Finished flye bbd in $(pwd) at $(date)"



# Assembly statistics output:

	#Total length:	66652412
	#Fragments:	7966
	#Fragments N50:	13017
	#Largest frg:	4706700
	#Scaffolds:	0
	#Mean coverage:	32