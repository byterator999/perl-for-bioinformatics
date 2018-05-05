# Switch two bases in a DNA string at specified positions
sub Exchange2Bases {
    $str = $_[0];
	$idx1 = $_[1];
	$idx2 = $_[2];
	@arr = split('', $str);
	$temp = @arr[$idx1];
	@arr[$idx1] = @arr[$idx2];
	@arr[$idx2] = $temp;
	return join('', @arr);
}

$dna = 'ACGTTCGATC';
print Exchange2Bases($dna, 2, 9);