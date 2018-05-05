# Deduce the reverse complement of a DNA strand
$dna = "ACGGGAGGACGGGAAAATTACTACGGCATTAGC";
# tr - transliteration (each character in the first set is replaced by the corresponding character in the second set - T replaces A, t replaces a, and so on)
($reverse_complement = reverse($dna)) =~ tr/ACGTacgt/TGCAtgca/;
print $reverse_complement;