# Reading protein sequence data from a file (I)
$proteinfilename = 'NM_021964fragment.pep';
open(PROTEINFILE, $proteinfilename);
@protein = <PROTEINFILE>;
close PROTEINFILE;
print @protein;


# Reading protein sequence data from a file (II)
$proteinfilename = 'NM_021964fragment.pep';
# If opening the file fails, print an error message and exit the program
unless(open(PROTEINFILE, $proteinfilename)) { 
    print "Count not open file $proteinfilename!\n"; 
	exit;
}


while ($protein = <PROTEINFILE>) {
    print $protein;
}


close PROTEINFILE;
exit;