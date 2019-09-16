#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

macs14 -t /NAS7/home/shijunpeng/Chip-seq/liuhan/EK-1_R1.fq.gz.bt2.v4.sorted.bam -f BAM -g 2.0e9 -n EK-1 --wig --single-profile --space=100 --keep-dup=1 
