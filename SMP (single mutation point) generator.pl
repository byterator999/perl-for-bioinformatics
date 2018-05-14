# Display the codons resulting from a single mutation point
#!/usr/bin/perl


use strict; 
use warnings; 


GLOBALS:
		my (%codon_table) = ( 
		       			  'TCA' => 'S', # Serine
						  'TCC' => 'S', # Serine
						  'TCG' => 'S', # Serine
						  'TCT' => 'S', # Serine
						  'TTC' => 'F', # Phenylalanine
						  'TTT' => 'F', # Phenylalanine
						  'TTA' => 'L', # Leucine
						  'TTG' => 'L', # Leucine
						  'TAC' => 'Y', # Tyrosine
						  'TAT' => 'Y', # Tyrosine
						  'TAA' => '_', # Stop
						  'TAG' => '_', # Stop 
						  'TGC' => 'C', # Cysteine
						  'TGT' => 'C', # Cysteine 
						  'TGA' => '_', # Stop
						  'TGG' => 'W', # Tryptophan
						  'CTA' => 'L', # Leucine
						  'CTC' => 'L', # Leucine
						  'CTG' => 'L', # Leucine
						  'CTT' => 'L', # Leucine
						  'CCA' => 'P', # Proline
						  'CCC' => 'P', # Proline
						  'CCG' => 'P', # Proline
						  'CCT' => 'P', # Proline
						  'CAC' => 'H', # Histidine
						  'CAT' => 'H', # Histidine
						  'CAA' => 'Q', # Glutamine
						  'CAG' => 'Q', # Glutamine
						  'CGA' => 'R', # Arginine
						  'CGC' => 'R', # Arginine
						  'CGG' => 'R', # Arginine
						  'CGT' => 'R', # Arginine
						  'ATA' => 'I', # Isoleucine
						  'ATC' => 'I', # Isoleucine
						  'ATT' => 'I', # Isoleucine
						  'ATG' => 'M', # Methionine
						  'ACA' => 'T', # Threonine
						  'ACC' => 'T', # Threonine
						  'ACG' => 'T', # Threonine
						  'ACT' => 'T', # Threonine
						  'AAC' => 'N', # Asparagine
						  'AAT' => 'N', # Asparagine
						  'AAA' => 'K', # Lysine
						  'AAG' => 'K', # Lysine
						  'AGC' => 'S', # Serine
						  'AGT' => 'S', # Serine
						  'AGA' => 'R', # Arginine
						  'AGG' => 'R', # Arginine
						  'GTA' => 'V', # Valine
						  'GTC' => 'V', # Valine
						  'GTG' => 'V', # Valine
						  'GTT' => 'V', # Valine
						  'GCA' => 'A', # Alanine
						  'GCC' => 'A', # Alanine
						  'GCG' => 'A', # Alanine
						  'GCT' => 'A', # Alanine
						  'GAC' => 'D', # Aspartic acid
						  'GAT' => 'D', # Aspartic acid
						  'GAA' => 'E', # Glutamic acid
						  'GAG' => 'E', # Glutamic acid
						  'GGA' => 'G', # Glycine
						  'GGC' => 'G', # Glycine
						  'GGG' => 'G', # Glycine
						  'GGT' => 'G', # Glycine
						);

sub SingleMutationAA {
	my ($codon) = @_;
	my (@codon) = split('', $codon);
	my @bases = qw(A C G T);
	
	for (my $b1 = 0; $b1 < $#codon + 1; ++$b1) {
	    my @tmp_codon = @codon;
		for (my $b2 = 0; $b2 < $#bases + 1; ++$b2) {
		    if ($bases[$b2] ne $codon[$b1]) {
			    $tmp_codon[$b1] = $bases[$b2]; 
				my $new_codon = join('', @tmp_codon);
				print "$codon_table{$new_codon}\t";
			}
		}
	}
}

						
MAIN:
	SingleMutationAA('TCA');
	