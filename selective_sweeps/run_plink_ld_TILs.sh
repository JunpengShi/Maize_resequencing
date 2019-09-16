#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr1.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr1.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr1.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr10.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr10.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr10.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr2.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr2.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr2.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr3.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr3.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr3.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr4.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr4.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr4.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr5.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr5.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr5.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr6.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr6.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr6.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr7.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr7.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr7.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr8.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr8.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr8.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

/NAS7/home/shijunpeng/software/plink-1.07-x86_64/plink --file ./chr9.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --r2 --out ./chr9.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05 --maf 0.05 --ld-window 10000 --ld-window-kb 200 --ld-window-r2 0 --map3 --geno 0.2 --noweb 
gzip ./chr9.all_accessions.VQ50.877_lines.deep_hetro.hetro_0.01.TILs.missing_0.5.maf_0.05.ld 

