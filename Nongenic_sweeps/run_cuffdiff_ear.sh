#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/cufflinks-2.2.1.Linux_x86_64/cuffdiff -o ./ear_cuffdiff -L Teosinte,Maize -p 5 -u /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.36.gff3 ./tophat_SRR1586746/accepted_hits.bam,./tophat_SRR1586747/accepted_hits.bam,./tophat_SRR1586748/accepted_hits.bam,./tophat_SRR1586749/accepted_hits.bam,./tophat_SRR1586750/accepted_hits.bam,./tophat_SRR1586751/accepted_hits.bam,./tophat_SRR1586752/accepted_hits.bam,./tophat_SRR1586753/accepted_hits.bam,./tophat_SRR1586754/accepted_hits.bam,./tophat_SRR1586755/accepted_hits.bam,./tophat_SRR1586756/accepted_hits.bam,./tophat_SRR1586757/accepted_hits.bam,./tophat_SRR1586758/accepted_hits.bam,./tophat_SRR1586759/accepted_hits.bam,./tophat_SRR1586760/accepted_hits.bam,./tophat_SRR1586761/accepted_hits.bam,./tophat_SRR1586762/accepted_hits.bam,./tophat_SRR1586763/accepted_hits.bam ./tophat_SRR1586736/accepted_hits.bam,./tophat_SRR1586737/accepted_hits.bam,./tophat_SRR1586738/accepted_hits.bam,./tophat_SRR1586739/accepted_hits.bam,./tophat_SRR1586740/accepted_hits.bam,./tophat_SRR1586741/accepted_hits.bam,./tophat_SRR1586742/accepted_hits.bam,./tophat_SRR1586743/accepted_hits.bam,./tophat_SRR1586744/accepted_hits.bam,./tophat_SRR1586745/accepted_hits.bam,./tophat_SRR1586764/accepted_hits.bam,./tophat_SRR1586765/accepted_hits.bam
