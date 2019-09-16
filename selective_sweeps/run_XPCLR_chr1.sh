#!/bin/bash
#
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/XPCLR_Jeff/src_NA/XPCLR -xpclr ./geno2_chr1_23_BKNs ./geno1_chr1_17_parviglumis_lines ./map_chr1_17_parviglumis_lines_and_23_BKNs ./chr1.XPCLR.17_parviglumis_23_BKNs -w1 0.005 200 10000 1 -p0 0.5 
