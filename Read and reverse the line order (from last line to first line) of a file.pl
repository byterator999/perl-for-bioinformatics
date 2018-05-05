# Read and reverse the line order (from last line to first line) of a file (I)
$filename = 'NM_021964fragment.pep';
open(FILEHANDLE, $filename);
print @contents = reverse(<FILEHANDLE>);

# Read and reverse the line order (from last line to first line) of a file (II)
$filename = 'NM_021964fragment.pep';
open(FILEHANDLE, $filename);
@contents = <FILEHANDLE>; 
for ($i = $#contents; $i >= 0; $i--) {
    print "$contents[$i]\n";
}

# Read and reverse the line order (from last line to first line) of a file (III)
# push() -> Add an element at the end of an array
# pop() -> Remove and return the last element in an array
# shift() -> Remove and return the first element in an array
# unshift() -> Add an element at the beginning of an array
$filename = 'NM_021964fragment.pep';
open(FILEHANDLE, $filename);
@contents = <FILEHANDLE>; 
$contents_length = $#contents; 
print $contents_length + 1; # displaying the contents will require content_length + 1 invocations of pop()
print "\n";
$last_element = pop(@contents);
print "$last_element\n"; 
$last_element = pop(@contents);
print "$last_element\n"; 
$last_element = pop(@contents);
print "$last_element\n"; 
