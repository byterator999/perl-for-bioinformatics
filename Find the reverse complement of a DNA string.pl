# Reverse complement 
#!/usr/bin/perl

use strict; 
use warnings; 


sub ReverseComplement {
	my ($dna) = @_; 
	my $revcomp = '';
	($revcomp = reverse($dna)) =~ tr/ACGTacgt/TGCAtgca/;
	return $revcomp; 
}


MAIN:
	print ReverseComplement('accgt');
	exit;
	