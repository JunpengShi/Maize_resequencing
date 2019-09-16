#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/admixture_linux-1.3.0/admixture --cv=10 /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/ADMIXTURE/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5.prunedData.bed 12 -j2 | tee K12.output 
