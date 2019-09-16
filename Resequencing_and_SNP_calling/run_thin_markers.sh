#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --allow-no-sex --noweb --bfile /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --indep-pairwise 50 10 0.1

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --noweb --bfile /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --extract plink.prune.in --make-bed --out ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5.prunedData
