#!/bin/bash
#$ -j y
#$ -cwd
#$ -S /bin/bash
#

/NAS2/shijp/software/emmax-beta-07Mar2010/emmax -v -d 10 -t /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/GWAS/filter_IBS_pairs/GWAS/PCA_and_Kinship/10chr.TEMs.VQ50.filter_IBS_0.025.hetro_0.01.imputation.r2_0.5.maf_0.05 -p ./100_kernels_weight.me.blup.CAU_IL.GCTA -c /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/GWAS/filter_IBS_pairs/GWAS/PCA_and_Kinship/PCA.643_lines.tfam_order -k /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/GWAS/filter_IBS_pairs/GWAS/PCA_and_Kinship/10chr.TEMs.VQ50.filter_IBS_0.025.hetro_0.01.imputation.r2_0.5.maf_0.05.hIBS.kinf -o ./100_kernels_weight.me.blup.CAU_IL.GCTA 

