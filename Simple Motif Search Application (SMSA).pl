# Motif searching 
# Ask the user for a file containing protein sequence data
print "\n\n\n";
print "----------------------------------------------\n";
print "=== Simple Motif Search Application (SMSA) ===\n";
print "----------------------------------------------\n\n\n";
print "Please, enter data file name: ";
$proteinfilename = <STDIN>;
# Remove the newline from the data file
chomp $proteinfilename; 

unless (open(PROTEINFILE, $proteinfilename)) {
    print "Cannot open file \"$proteinfilename\"\n\n";
	exit; 
}

# Read the data into an array
@protein = <PROTEINFILE>;
close(PROTEINFILE);

# Searching for a motif is easier in a string than an array, so
$protein = join(' ', @protein);

# Remove whitespace
$protein =~ s/\s//g;

# Ask the user for a motif 
do {
	print "Please, enter a motif: ";
    $motif = <STDIN>;
	chomp $motif; 
	if ($protein =~ /$motif/) {
	    print "Motif found\n";
	}
	
	else {
	    print "Motif not found\n";
	}
	# exit on an empty user input 
}   until ($motif =~ /^\s*$/); # \s can be re-written as \[\t\n\f\r] 

exit;

