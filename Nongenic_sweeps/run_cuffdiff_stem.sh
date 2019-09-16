#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/cufflinks-2.2.1.Linux_x86_64/cuffdiff -o ./stem_cuffdiff -L Teosinte,Maize -p 5 -u /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.36.gff3 ./tophat_SRR1587047/accepted_hits.bam,./tophat_SRR1587048/accepted_hits.bam,./tophat_SRR1587049/accepted_hits.bam,./tophat_SRR1587050/accepted_hits.bam,./tophat_SRR1587051/accepted_hits.bam,./tophat_SRR1587052/accepted_hits.bam,./tophat_SRR1587053/accepted_hits.bam,./tophat_SRR1587054/accepted_hits.bam,./tophat_SRR1587055/accepted_hits.bam,./tophat_SRR1587056/accepted_hits.bam,./tophat_SRR1587057/accepted_hits.bam,./tophat_SRR1587058/accepted_hits.bam,./tophat_SRR1587059/accepted_hits.bam,./tophat_SRR1587060/accepted_hits.bam,./tophat_SRR1587061/accepted_hits.bam,./tophat_SRR1587062/accepted_hits.bam,./tophat_SRR1587063/accepted_hits.bam ./tophat_SRR1587037/accepted_hits.bam,./tophat_SRR1587038/accepted_hits.bam,./tophat_SRR1587039/accepted_hits.bam,./tophat_SRR1587040/accepted_hits.bam,./tophat_SRR1587041/accepted_hits.bam,./tophat_SRR1587042/accepted_hits.bam,./tophat_SRR1587043/accepted_hits.bam,./tophat_SRR1587044/accepted_hits.bam,./tophat_SRR1587045/accepted_hits.bam,./tophat_SRR1587046/accepted_hits.bam,./tophat_SRR1587064/accepted_hits.bam,./tophat_SRR1587065/accepted_hits.bam
