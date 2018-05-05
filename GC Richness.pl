# Calculate GC-richness in a DNA string sequence
$dna = <STDIN>;
chomp $dna;
$g = (($dna =~ tr/g//)/length($dna)) * 100;
$c = (($dna =~ tr/c//)/length($dna)) * 100;
print "\nG: $g% \t C: $c%"; 