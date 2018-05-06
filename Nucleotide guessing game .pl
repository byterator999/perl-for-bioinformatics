# Guess the nucleotide! 
#!/usr/bin/perl 

use strict; 
use warnings; 
	
MAIN:
	my @nucleotides = ('adenine', 'guanine', 'cytosine', 'thymine');
	# Game session
	my $round = 1;
	# Number of successful attempts
	my $hits = 0; 
	# Number of unsuccessful attempts 
	my $misses = 0; 
	# Seed the RNG by combining the current time with the current process id
	srand(time || $$);
	# The AI's choice of a base 
	my $guess = $nucleotides[rand(@nucleotides)]; 
	
	for (;;)
	{	 
		print "Please, choose a base (Round $round): ";
		my $user_input = <STDIN>;
		# Remove the newline from the input
		chomp $user_input; 

		# If you've guessed the AI's base correctly 		
		if ($user_input eq $guess) 
		{
			print "Yay, you guessed it! It's $user_input. Onto the next one! \n";
			$round += 1;
			$hits += 1; 
			# Re-new the AI's choice before passing to the next round
			$guess = $nucleotides[rand(@nucleotides)]; 
		}
			
		elsif ($user_input eq 'quit')
		{
			last; 
		}
		
		else 
		{
			print "You got it wrong. It is not $user_input. Try again!\n";
			$misses += 1;
		}
	} 
	
	print "\nCorrect guesses: $hits\n";
	print "Incorrect guesses: $misses\n"; 
		
	if ($hits > $misses) 
	{ 
	    print "\nCongrats, Professor X!\n";
	}
	
	elsif ($hits <= $misses)
	{
	    print "\nNot exactly a psychic, are you?\n";
	}
	
	exit;