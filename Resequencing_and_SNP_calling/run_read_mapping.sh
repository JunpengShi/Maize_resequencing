#!/bin/bash
####################   this script was used to map the reads and mark duplications

bwa aln -t 2 /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.fa ./CAU06_1_1.fastq.gz >./CAU06_1_1.fastq.gz.sai

bwa sampe -r "@RG\tID:CAU6\tPL:ILLUMINA\tLB:CAU6\tSM:CAU6" /NAS2/shijp/data/B73_V4/Zea_mays.AGPv4.dna.toplevel.fa ./CAU06_1_1.fastq.gz.sai ./CAU06_1_2.fastq.gz.sai ./CAU06_1_1.fastq.gz ./CAU06_1_2.fastq.gz | samtools view -bSq 20 - | samtools sort - ./CAU06_1_1.fastq.gz.q20.sorted

java -jar /NAS7/home/shijunpeng/software/picard/picard.jar MarkDuplicates I=./CAU06_1_1.fastq.gz.q20.sorted.bam O=./CAU06_1_1.fastq.gz.q20.sorted.MD.bam M=./CAU06_1_1.fastq.gz.q20.sorted.MD.metrics AS=true VALIDATION_STRINGENCY=SILENT
