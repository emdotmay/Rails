###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
#
# 2. Ask the user for their name and store it in a variable.
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.
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

print "Hi, #{player_name}! You will have three chances to guess a number between 1 and 10"

guesses_left = 3 #this will count how many more times a player can guess

print "You have" + " " + guesses_left.to_s + "guesses left" #this tells the player how many guesses they have left

secret_number = 10 #this is the secret number

print "\nMake your first guess!"
guess = $stdin.gets.chomp.to_i

	if guess == secret_number 
		print "Congrats! You've guessed the secret number!" 
		exit
	
	  elsif guess < secret_number 
	  	print "You've guessed too low, guess higher next time!"

	  elsif guess > secret_number 
	  	print "You've guessed too high, guess lower next time!"
	
	end

guesses_left -= 1

print "You have" + " " + guesses_left + " " + "guesses left" 

	if guess == secret_number 
		print "Congrats! You've guessed the secret number!" 
		exit
	
	  elsif guess < secret_number 
	  	print "You've guessed too low, guess higher next time!"

	  elsif guess > secret_number 
	  	print "You've guessed too high, guess lower next time!"
	
	end


guesses_left -= 1

print "You have" + " " + guesses_left + " " + "guesses left" 

	if guess == secret_number 
		print "Congrats! You've guessed the secret number!" 
		exit
	
	  elsif guess < secret_number 
	  	print "You've guessed too low, guess higher next time!"

	  elsif guess > secret_number 
	  	print "You've guessed too high, guess lower next time!"
	
	end

print "\nYou lost! The secret number was" + " " + secret_number.to_s + "."
