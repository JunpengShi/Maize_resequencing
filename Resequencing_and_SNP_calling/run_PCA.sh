#!/bin/bash
#$ -j y
#$ -cwd
#$ -S /bin/bash
#

## convert the ped and map format to binary format which will facilitate the processing speed
/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --map3 --make-bed --noweb --out /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5

## Estimate the genetic relationship matrix (GRM) between pairs of individuals from a set of SNPs and save the lower triangle elements of the GRM to binary files
/NAS7/home/shijunpeng/software/GCTA/gcta64 --bfile /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --autosome-num 10 --autosome --make-grm --out ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5

## Input the GRM and output the first n (n = 100, default 20) eigenvalues (saved as *.eigenval, plain text file) and eigenvectors (saved as *.eigenvec, plain text file)
/NAS7/home/shijunpeng/software/GCTA/gcta64 --grm ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --pca 100 --out ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5
