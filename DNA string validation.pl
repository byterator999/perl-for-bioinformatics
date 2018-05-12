# Check if a string is a DNA sequence
#!/usr/bin/perl


use strict; 
use warnings; 


sub isValidDNASeq {
	my ($base) = @_; 
	
	if ($base =~ m/^[AaGgCcTt]+$/) {
	    print "\nDNA sequence is valid.\n";
	}
	
	else { 
	    print "\nDNA sequence is not valid.\n";
	}
}


MAIN:
	isValidDNASeq('ACCAG'); # Valid 
	isValidDNASeq('AWCAG'); # Invalid