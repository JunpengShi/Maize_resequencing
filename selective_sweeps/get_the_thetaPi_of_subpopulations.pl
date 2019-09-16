#!/usr/bin/perl
use strict;
use warnings;

die usage() if @ARGV == 0;

my ($subgroup_list,$chr,$missing_rate_cutoff,$scale,$jvcf,$output) = @ARGV;

## reading the lines used for genetic diversity analysis
my %hash_subgroup_list;
open NEW,"$subgroup_list" or die;
while(<NEW>){
	chomp;
	my @array = split /\s+/;
	$hash_subgroup_list{$array[0]} = 1;
}
close NEW;
my $individual_number = keys %hash_subgroup_list;

my %hash_coverage;
my @coverage_files = </NAS6/shijunpeng/data/GWAS/SNP_calling/GATK/Unifiedgenotyper/$chr.*.all_accessions.vcf.gz>;
foreach my $file(@coverage_files){
	my @array_lines_index;
	open NEW,"zcat $file |" or die;
	while(<NEW>){
		chomp;
		next if (/^##/);
		my @array = split /\s+/;
		if($array[0] eq "#CHROM"){
			for(my $aa = 0;$aa < @array;$aa++){
				if(exists $hash_subgroup_list{$array[$aa]}){
					push @array_lines_index,$aa;
				}
			}
		}
		else{
			my $missing_individuals = 0;
			foreach my $a(@array[@array_lines_index]){
				if($a eq "0"){
					$missing_individuals++;
				}
			}
			my $missing_ratio = $missing_individuals/$individual_number;
			if($missing_ratio <= $missing_rate_cutoff){
				my $window_index = int($array[1]/$scale);
				$hash_coverage{$window_index}++;
			}
		}
	}
	close NEW;
}

my %hash_genetic_diversity;
my @array_lines_index;
open NEW,"$jvcf" or die;
while(<NEW>){
	chomp;
	next if (/^#/);
	my @array = split /\s+/;
	if(/^CHROM/){
		for(my $number = 0;$number < @array;$number++){
			if(exists $hash_subgroup_list{$array[$number]}){
				push @array_lines_index,$number;
			}
		}
	}
	else{
		my $line = join "\t",@array[@array_lines_index];
		my $total_line_number = @array_lines_index;
		my $missing_number = $line =~ s/x/x/g;
		my $missing_ratio_loci = $missing_number/$total_line_number;
		if($missing_ratio_loci <= $missing_rate_cutoff){
			my $window_index = int($array[1]/$scale);
			my ($ref,$alt) = split /\//,$array[2];
			my $ref_number = 0;
			my $alt_number = 0;
			foreach my $geno(@array[@array_lines_index]){
				if($geno eq $ref){
					$ref_number++;
				}
				elsif($geno eq $alt){
					$alt_number++;
				}
			}
			next if ($ref_number == 0 or $alt_number == 0);
			## calculate the SNP number in each window
			$hash_genetic_diversity{$window_index}[0]++;
			## calculate the Pi at each SNP site
			my $pi = pi($ref_number,$alt_number);
			$hash_genetic_diversity{$window_index}[1]+=$pi;
			## calculate the W at each SNP site
			my $W = W($ref_number,$alt_number);
			$hash_genetic_diversity{$window_index}[2]+=$W;
		}
	}
}
close NEW;

open NEW,">$output" or die;
print NEW "Chromosome\tWindow($scale)\tstart\tend\tCovered_base\tTotal_SNPs\tTotal_Pi\tTotal_W\tAverage_ThetaPi\tAverage_ThetaW\n";
foreach my $key(sort {$a <=> $b} keys %hash_coverage){
	my $start = $key*$scale + 1;
	my $end = ($key + 1)*$scale;
	my $covered_base = $hash_coverage{$key};
	my $Total_SNPs = 0;
	my $Total_Pi = 0;
	my $Total_W = 0;
	if(defined $hash_genetic_diversity{$key}[0]){
		$Total_SNPs = $hash_genetic_diversity{$key}[0];
	}
	if(defined $hash_genetic_diversity{$key}[1]){
		$Total_Pi = $hash_genetic_diversity{$key}[1];
	}
	if(defined $hash_genetic_diversity{$key}[2]){
		$Total_W = $hash_genetic_diversity{$key}[2];
	}

	my $Average_ThetaPi = $Total_Pi/$covered_base;
	my $Average_ThetaW = $Total_W/$covered_base;

	print NEW "$chr\t$key\t$start\t$end\t$covered_base\t$Total_SNPs\t$Total_Pi\t$Total_W\t$Average_ThetaPi\t$Average_ThetaW\n";
}
close NEW;
		

sub pi{
	my ($ref_number,$alt_number) = @_;
	## the formular for the calculation of ThetaPi which can be generalized to an arbitrary number of character states per polymorphic site
	## but here we only focused on biallelic SNPs
	my $pi = 1 - ($ref_number*($ref_number - 1)+$alt_number*($alt_number - 1))/(($ref_number + $alt_number)*($ref_number + $alt_number - 1));
	return $pi;
}

sub W{
	my ($ref_number,$alt_number) = @_;
	my $total = $ref_number + $alt_number;
	my $harmonic_number = harmonic_number($total);
	my $w = 1/$harmonic_number;
	return $w;
}

sub harmonic_number{
	my ($total) = @_;
	## the harmonic number
	my $a;
	for(my $number = 1;$number < $total;$number++){
		$a+=(1/$number);
	}
	return $a;
}


sub usage{
	my $die =<<DIE;
	usage : perl *.pl subgroup_list chr missing_rate_cutoff scale *.jvcf output
	## this script was used to calculate the genetic diversity among subpopulations
DIE
}
