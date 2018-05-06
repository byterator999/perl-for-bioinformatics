# Mutate DNA (II)
#!/usr/bin/perl

use strict; 
use warnings; 

sub SelectRandomArrayIndex {
	return rand(@_); 
}
	
MAIN:
	my $dna = "AACGGT";
	my @dna = split('', $dna);
	my @bases = ('A', 'C', 'G', 'T');
	my $mutations = 1; 
	# Seed by combining the current time with the current process id
	srand(time || $$);
	# Mutate a random position in the DNA sequence -mutation- number of times
	for (my $m = 0; $m < $mutations; ++$m)
	{
		my $rbase;
		my $rindex; 
		
		do 
		{
			# Pick a random DNA base
			$rbase = $bases[SelectRandomArrayIndex(@bases)];
			# Pick a random index in the input DNA sequence
			$rindex = SelectRandomArrayIndex(@dna); 
			# Substitute the base at a random index for rbase
		} until ($rbase ne $dna[$rindex]);
		
		$dna[$rindex] = $rbase;
	}
	
	# Print the mutated DNA sequence
	print @dna;
	exit;