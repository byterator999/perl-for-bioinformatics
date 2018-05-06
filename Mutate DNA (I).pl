# Mutate DNA (I)
#!/usr/bin/perl

use strict; 
use warnings; 

MAIN:
	my $dna = "ACGTTAGTACC";
	my @dna = split('', $dna);
	my @bases = ('A', 'C', 'G', 'T');
	my $mutations = 2; 
	# Seed by combining the current time with the current process id
	srand(time || $$);
	# Mutate a random position in the DNA sequence -mutation- number of times
	for (my $m = 1; $m <= $mutations; $m++)
	{
		# Pick a random DNA base
		my $rbase;
		
		for (my $base = 0; $base < $#bases + 1; $base++) 
		{
			$rbase = $bases[rand(@bases)];
		}
		
		# Pick a random DNA base index from the input DNA sequence
		my $rindex; 
		
		for (my $i = 0; $i < $#dna + 1; $i++) 
		{
			$rindex = rand(@bases);
		}
		
		# Substitute the base at rindex for rbase
		$dna[$rindex] = $rbase;
	}
	
	# Print the mutated DNA sequence
	print @dna;
	exit;