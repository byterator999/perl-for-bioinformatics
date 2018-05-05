# Basic string matching 
#! usr/bin/perl

use strict; 
use warnings; 

MAIN:
	my @target = split('', 'goof through gone the way-gone-osphere *~gone*----x,asdgoneadadi');
	my @query = split('', 'gone');
	my @pos;
	my $occurrences = 0;

	for (my $i = 0; $i <= ($#target - $#query) ; $i++) {
	    if ($target[$i] eq $query[0]) {
		    push(@pos, $i);
		}
	}
	
	for (my $i = 0; $i <= $#pos; $i++) 
	{ 
		my $match = 0; 
		for (my $k = $pos[$i], my $j = 0; $j <= $#query; $k++, $j++) 
		{
		    if ($target[$k] eq $query[$j]) 
			{
			   $match++; 
			   if ($match == $#query + 1) 
			    {
			       print "Query found at position: $pos[$i]\n";
				   $occurrences++;
				}
			}
		}
	}
	
	print "Total number of query's occurrences: $occurrences\n\n";
	
		