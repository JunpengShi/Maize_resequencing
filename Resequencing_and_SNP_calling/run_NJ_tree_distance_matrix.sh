#!/bin/bash
#$ -j y
#$ -cwd
#$ -S /bin/bash
#

## get the distance matrix
/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/population_structure/10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5 --maf 0.05 --map3 --noweb --cluster --distance-matrix --out ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5

perl ./convert_IBS_distance_matrix_into_phylip_input_format.pl ./10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5.mdist ../10chr.all_accessions.VQ50.877_lines.MAF_0.05.missing_value_0.5.ped >./infile
