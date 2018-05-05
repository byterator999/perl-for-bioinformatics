# Basic string matching 
#! usr/bin/perl

use strict; 
use warnings; 

MAIN:
	my @target = split('', 'goof through gone the way-gone-osphere *~gone*----x,asdgoneadadi');
	my @query = split('', 'gone');
	my @pos;
	my @candidates;

	for (my $i = 0; $i <= ($#target - $#query) ; $i++) {
	    if ($target[$i] eq $query[0]) {
		    push(@pos, $i);
		}
	}
	
	for (my $i = 0; $i <= $#pos; $i++) 
	{ 
		my @temp;
		my $tmp;
		for (my $k = $pos[$i], my $j = 0; $j <= $#query; $k++, $j++) 
		{
			$tmp .= $target[$k];
			if (length($tmp) == 4) {
			    push(@temp, $tmp);
				print "@temp \n";
				last; 
			}
		}
	}

	
	
		