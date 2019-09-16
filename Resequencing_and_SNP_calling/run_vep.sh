#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/VEP/ensembl-vep/vep --species zea_mays --cache --cache_version 36 -i ../10chr.all_accessions.VQ50.877_lines.vcf -o ./10chr.all_accessions.VQ50.877_lines.vcf.vep.anno --fasta /NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/SNPs/raw_SNPs/SNP_annotation/VEP/annotation/genome.fa.gz --offline
