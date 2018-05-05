# Calculate the percentage of hydrophobic amino acids in a protein sequence 
$protein = <STDIN>;
chomp $protein;
$hydrophobic_aa = 0; 
@protseq = split('', $protein);
foreach (@protseq) { 
    if ($_ eq 'G' || $_ eq 'A' || $_ eq 'V' ||
		$_ eq 'P' || $_ eq 'I' || $_ eq 'L' || 
		$_ eq 'C' || $_ eq 'M' || $_ eq 'F' || 
		$_ eq 'W') {
	$hydrophobic_aa++;
	}
}

$result =  int(($hydrophobic_aa / ($#protseq + 1)) * 100);
print "Percentage of hydrophobic amino acids in the protein sequence: $result%";
