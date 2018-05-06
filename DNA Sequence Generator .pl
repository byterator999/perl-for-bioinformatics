# Generate a DNA sequence
#!/usr/bin/perl 

use strict; 
use warnings; 
	
MAIN:
	my @bases = ('A', 'C', 'G', 'T');
	# Length of the generated base sequences
	my $dna_length = 5; 
	# Length of the total sequence
	my $dna_strand = 60; 
	# The resulting DNA sequence
	my $dna;
	# Seed by combining the current time with the current process id
	srand(time || $$);
	# Generate DNA sequences of [dna_length] length
	my @dna; 
	for (my $i = 0; $i < $dna_strand; ++$i)
	{
		for (my $j = 0; $j < $dna_length; ++$j)
		{ 
			push(@dna, $bases[rand(@bases)]); 
		}
		
		$dna = join('', @dna);
	}
	
	# Print the mutated DNA sequence
	print $dna;
	exit;