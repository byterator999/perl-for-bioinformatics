# Reverse transcription
$rna = "ACGGGAGGACGGGAAAAUUACUACGGCAUUAGC";
($dna = $rna) =~ s/U/T/g; 
print $dna;  