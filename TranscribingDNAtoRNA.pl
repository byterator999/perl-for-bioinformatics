# Transcribing DNA to RNA
$dna = "ACGGGAGGACGGGAAAATTACTACGGCATTAGC";
# =~ is a binding operator ("apply the operator ("apply the operation on the right to the string in the variable on the left"), s indicates substitution, 
# T is the element to be substituted, U is the substitute, and g indicates global ("apply the substitution for the entire string") 
($rna = $dna) =~ s/T/U/g/;
print $rna; 
print "\n\n\n\n\n\n\n";