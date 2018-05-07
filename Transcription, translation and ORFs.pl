#!/usr/bin/perl 


use strict; 
use warnings; 


GLOBALS:
	my %codon_map;

	
# DNA-to-RNA transcription 
sub TranscribeDNA2RNA 
{
	my ($dna) = @_;
	my $rna = reverse($dna);
	$rna =~ tr/ACGTacgt/UGCAugca/;
	return $rna;
}

# RNA-to-Protein translation
sub TranslateRNA2Protein
{
	my ($mRNA) = @_;
	my $protein = "";
	while ($mRNA =~ s/(...)//) 
	{
		$protein .= $codon_map{$1};
	}
	
	return $protein;
}


MAIN:
	
	# Construct a look-up table which maps codons to amino acids
	# by reading the DATA portion at the end of the program ([AA] [Codon1] [Codon2] [...])
	while (my $input = <DATA>) 
	{
	    chomp $input; 
		my @codons = split(" ", $input);
		my $residue = shift(@codons);
		foreach my $triplet (@codons) 
		{
		  $codon_map{$triplet} = $residue;
		}
	}
	
	while (my $dna = <STDIN>)
	{
		chomp $dna; 
		print "DNA: $dna\n";
		my $rna = TranscribeDNA2RNA($dna);
		print "RNA: $rna\n";
		my $protein = TranslateRNA2Protein($rna);
		print "ORF_1: $protein\n";
		$rna =~ s/.//;
		$protein = TranslateRNA2Protein($rna);
		print "ORF_2: $protein\n";
		$rna =~ s/.//;
		$protein = TranslateRNA2Protein($rna);
		print "ORF_3: $protein\n";
	}
	
__END__
Ala GCU GCC GCA GCG
Arg CGU CGC CGA CGG AGA AGG
Asn AAU AAC
Asp GAU GAC
Cys UGU UGC
Gln CAA CAG
Glu GAA GAG
Gly GGU GGC GGA GGG
His CAU CAC
Ile AUU AUC AUA
Leu UUA UUG CUU CUC CUA CUG 
Lys AAA AAG
Met AUG
Phe UUU UUC 
Pro CCU CCC CCA CCG
Ser UCU UCC UCA UCG AGU AGC
Thr ACU ACC ACA ACG 
Trp UGG 
Tyr UAU UAC
Val GUU GUC GUA GUG
... UAA UAG UGA