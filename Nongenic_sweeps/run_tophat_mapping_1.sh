#!/bin/bash
#$ -cwd
#$ -j y
#$ -S /bin/bash
#

/NAS7/home/shijunpeng/software/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump --split-3 --gzip ./SRR1586759.sra 
perl ./trim_the_adaptor_sequence.pl ./SRR1586759.fastq.gz ./SRR1586759.trimmed.fastq
rm ./SRR1586759.fastq.gz 
tophat -o ./tophat_SRR1586759 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.bt2 ./SRR1586759.trimmed.fastq.gz 

/NAS7/home/shijunpeng/software/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump --split-3 --gzip ./SRR1587052.sra 
perl ./trim_the_adaptor_sequence.pl ./SRR1587052.fastq.gz ./SRR1587052.trimmed.fastq
rm ./SRR1587052.fastq.gz 
tophat -o ./tophat_SRR1587052 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.bt2 ./SRR1587052.trimmed.fastq.gz 

/NAS7/home/shijunpeng/software/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump --split-3 --gzip ./SRR1587039.sra 
perl ./trim_the_adaptor_sequence.pl ./SRR1587039.fastq.gz ./SRR1587039.trimmed.fastq
rm ./SRR1587039.fastq.gz 
tophat -o ./tophat_SRR1587039 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.bt2 ./SRR1587039.trimmed.fastq.gz 

/NAS7/home/shijunpeng/software/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump --split-3 --gzip ./SRR1586898.sra 
perl ./trim_the_adaptor_sequence.pl ./SRR1586898.fastq.gz ./SRR1586898.trimmed.fastq
rm ./SRR1586898.fastq.gz 
tophat -o ./tophat_SRR1586898 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.bt2 ./SRR1586898.trimmed.fastq.gz 

/NAS7/home/shijunpeng/software/sratoolkit.2.8.2-1-centos_linux64/bin/fastq-dump --split-3 --gzip ./SRR1587044.sra 
perl ./trim_the_adaptor_sequence.pl ./SRR1587044.fastq.gz ./SRR1587044.trimmed.fastq
rm ./SRR1587044.fastq.gz 
tophat -o ./tophat_SRR1587044 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.bt2 ./SRR1587044.trimmed.fastq.gz 

