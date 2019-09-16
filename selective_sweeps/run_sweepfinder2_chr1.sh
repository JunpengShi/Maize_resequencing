#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/SF2/SweepFinder2 -lu ./chr1.643_lines.missing_0.5.grid ./chr1.643_lines.missing_0.5.modified.SF /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/results_20181204/selective_sweeps/Sweepfinder2/643_lines/empirical_allele_frequency/10chr.643_lines.missing_0.5.Spect ./chr1.643_lines.missing_0.5.clr 
