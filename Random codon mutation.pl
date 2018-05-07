# Random mutation in a codon 
#!/usr/bin/perl

use strict; 
use warnings; 

MAIN:
	my $codon = <>;
	my @bases = qw(A C G T);
	my @codon = split('', $codon);
	# Seed the RNG
	srand(time || $$);
	# Generate a random base
	my $rbase = $bases[rand(@bases)];
	# Get a random position for the substitution
	my $rpos = rand(@codon);
	$codon[$rpos] = $rbase; 
	print @codon;
	