# Read a FASTA-formatted file
#!/usr/bin/perl

use strict; 
use warnings; 


sub ExtractFileData { 
    my ($filename) = @_; 
	# Initialization
	my @filedata = ();
	
	unless(open(FILE_DAT, $filename)) {
	    print STDERR "Cannot open file \"$filename\"\n\n";
		exit;
	}
	
	@filedata = <FILE_DAT>;
	
	close FILE_DAT;
	
	return @filedata;
}


sub ExtractSequence {
	my (@fasta_data) = @_;
	
	my $sequence = '';
	
	foreach my $line (@fasta_data) {
		# Skip blank lines 
		if ($line =~ /^\s*$/) { next; }
		# Skip comments
		elsif ($line =~ /^\s*#/) { next; }
		# Skip FAST headers
		elsif ($line =~ /^>/) { next; }
		
		else { $sequence .= $line; }
	}
	
	# Lastly, remove whitespaces
	$sequence =~ s/\s//g;
	
	return $sequence;
}


sub FixedLinesPrint {
	my ($sequence, $length) = @_;
	
	# Print the sequence in positions of $length
	for (my $pos = 0; $pos < length($sequence); $pos += $length) {
		print (substr($sequence, $pos, $length), "\n");
	}
}


MAIN:
	my @fasta_data = ExtractFileData('sample.dna');
	FixedLinesPrint(ExtractSequence(@fasta_data), 20);
	exit;
	