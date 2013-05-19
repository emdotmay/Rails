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

print "Hi, #{player_name}! You will have three chances to guess a number between 1 and 10. Make your first guess"

set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

secret_number = set_of_numbers.sample #choose random number from array

messages = {
:win => "You win!", 
:lose => "You lose!", 
:too_low => "Your guess was too low",
:too_high => "Your guess was too high"
}

def guesses_left(x)
  return 3 - x
end

def increment_guess_count(i)
	return i += 1
end 

i = 0

while i < 3 do 
  guess = $stdin.gets.chomp.to_i

  if guess == secret_number
	print messages[:win]
	exit

  elsif guess < secret_number
	print messages[:too_low]

  else 
	print messages[:too_high]

end

i += 1

increment_guess_count(i)
guesses_left(i)

print "\nYou have" + " " + guesses_left(i).to_s + " " + "guesses left." 

end
