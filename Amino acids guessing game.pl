# Pick an AA and let the PC guess it
#!/usr/bin/perl 

use strict; 
use warnings; 
	
MAIN:
	my @amino_acids = ('R', 'H', 'K', 'D', 'E', 'S', 'T', 'N', 'Q', 'C', 'U',
					   'G', 'P', 'A', 'I', 'L', 'M', 'F', 'W', 'Y', 'V');
	
	# Seed the RNG by combining the current time with the current process id
	srand(time || $$);
	
	my $user_input; 
	
	for (;;)
	{	
		print "Please, pick your amino acid: "; 
		$user_input = <STDIN>;
		chomp $user_input;
		my $guess = $amino_acids[rand(@amino_acids)]; 
		print "\n\n\n";
		if ($user_input eq $guess) 
		{
			print "Yay, I guessed it right! I knew you've picked $guess.\n";
		}
		
		elsif ($user_input eq 'quit')
		{
			print "Have a nice day!\n\n";
			exit; 
		}
		
		else
		{
			print "Oh no, I thought you've picked $guess.\n";
		}
	}
	
	exit;