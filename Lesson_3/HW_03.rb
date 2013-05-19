###############################################################################
#
# Introduction to Ruby on Rails
#
# Homework 03
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to Lab 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` (HW_02) so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    ('secret_number' is the integer our Player will try to guess).
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys Value pairs:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program, so instead of hard coding, use the principles of DRY(don't repeat yourself). 
#    This means using a Loop to iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
#Put your solution below this line.
#
###############################################################################

puts "\nWelcome to the Secret Number game! This game was created by Mary Mei"

puts "\nWhat's your name?"
player_name = $stdin.gets.chomp 
player_name.capitalize! 

print "Hi, #{player_name}! You will have three chances to guess a number between 1 and 10"

guesses_left = 3 #this will count how many more times a player can guess

set_of_numbers = [1,2,3,4,5,6,7,8,9,10]

secret_number = set_of_numbers.sample #choose random number from array

messages = {
:win => "You win!", 
:lose => "You lose!", 
:too_low => "Your guess was too low",
:too_high => "Your guess was too high"
}

i = 0

print "\nMake your first guess!"

while i < guesses_left do 

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

print "\nYou have" + " " + (guesses_left - i).to_s + " " + "guesses left." 

end