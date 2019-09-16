#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/cufflinks-2.2.1.Linux_x86_64/cuffdiff -o ./leaf_cuffdiff -L Teosinte,Maize -p 5 -u /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.36.gff3 ./tophat_SRR1586898/accepted_hits.bam,./tophat_SRR1586899/accepted_hits.bam,./tophat_SRR1586900/accepted_hits.bam,./tophat_SRR1586901/accepted_hits.bam,./tophat_SRR1586902/accepted_hits.bam,./tophat_SRR1586903/accepted_hits.bam,./tophat_SRR1586904/accepted_hits.bam,./tophat_SRR1586905/accepted_hits.bam,./tophat_SRR1586906/accepted_hits.bam,./tophat_SRR1586907/accepted_hits.bam,./tophat_SRR1586908/accepted_hits.bam,./tophat_SRR1586909/accepted_hits.bam,./tophat_SRR1586910/accepted_hits.bam,./tophat_SRR1586911/accepted_hits.bam,./tophat_SRR1586912/accepted_hits.bam,./tophat_SRR1586913/accepted_hits.bam,./tophat_SRR1586914/accepted_hits.bam ./tophat_SRR1586888/accepted_hits.bam,./tophat_SRR1586889/accepted_hits.bam,./tophat_SRR1586890/accepted_hits.bam,./tophat_SRR1586891/accepted_hits.bam,./tophat_SRR1586892/accepted_hits.bam,./tophat_SRR1586893/accepted_hits.bam,./tophat_SRR1586894/accepted_hits.bam,./tophat_SRR1586895/accepted_hits.bam,./tophat_SRR1586896/accepted_hits.bam,./tophat_SRR1586897/accepted_hits.bam,./tophat_SRR1586915/accepted_hits.bam,./tophat_SRR1586916/accepted_hits.bam
