###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

puts "\nWelcome to the Secret Number game! This game was created by Mary Mei"

puts "\nWhat's your name?"
player_name = $stdin.gets.chomp 
player_name.capitalize! 
secret_number = 10 #this is the secret number

increment_guess_count = 0

guesses_left = 3 - increment_guess_count #this is how many guesses the player has remaining

print "\nHi, #{player_name}! You will have three chances to guess a number between 1 and 10"

loop do 
	increment_guess_count += 1 
	break if increment_guess_count >= 3


	print "\nYou have " + guesses_left.to_s + " guesses left" #this tells the player how many guesses they have left

	print "\nMake your guess!"
	guess = $stdin.gets.chomp.to_i

	if guess == secret_number 
		print "Congrats! You've guessed the secret number!" 
		exit
	
	  elsif guess < secret_number 
	  	print "You've guessed too low, guess higher next time!"

	  else guess > secret_number 
	  	print "You've guessed too high, guess lower next time!"
	  end
		if guesses_left == 0 
		  print "\nYou lost! The secret number was" + " " + secret_number.to_s + "."
		end

end 

