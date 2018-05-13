# Verify a protein sequence
#!/usr/bin/perl


use strict; 
use warnings; 


sub IsValidProteinSeq {
    my ($protein) = @_;
	# All characters except those in the list 
	# are valid in a peptide sequence 
	if ($protein =~ m/[BJOUXZbjouxz]/) {
	    print "\nInvalid protein sequence.\n";
	}
	
	else {
	    print "\nValid protein sequence.\n";
	}
}


MAIN:
	IsValidProteinSeq('LSSKMVR'); # Valid
	IsValidProteinSeq('LSOMVR'); # Invalid
	exit;