
# #.times loop practice
# # 3.times do
# # 	puts "Beetlejuice"
# # end

# num = 4

# num.times do
# 	puts "This is awesome"
# end	


#**********************************************************************************#


# # The Little Coder That Could: Print out "I think I can" 5x!

# 5.times do
# 	puts "I think I can"
# end
# 	

#**********************************************************************************#

# # Times Square:
# # Initiate a variable called 'count' at 0.
# # For ten times, display the square of 'count',
# # and then increment each time by 1.


# count = 0

# 10.times do
# 	puts count**2
# 	count +=1
# end

#**********************************************************************************#

## Ask the user for a number (1-10), print the doubles of their number through 10.
# (Make sure you include the double of 10!)

# puts "Give me a number from 1 - 10:"

# num = gets.chomp.to_i

# until num == 11
# 	puts num * 2
# 	num +=1
# end	

#**********************************************************************************#

## Now reverse it! Ask for again for a number between 1 and 10, then count down to 0.

# puts "Give me a number from 1 - 10:"

# num = gets.chomp.to_i

# until num == 0
# 	puts num * 2
# 	num -=1
# end	


#**********************************************************************************#

# # Until Dad says yes, keep asking him if we can go to Itchy and Scratchy Land (or Mt. Splashmore).


# dad = "no"
# until dad == "yes" || dad == "yep" || dad == "Uh huh"
# 	puts "Can we go to Itchy and Scratchy Land?"

# 	dad = gets.chomp.downcase
# end

# puts "Yay! Thanks Dad!"

#**********************************************************************************#

# # Pretend the computer is being passed around during class introductions.
# # The student at the very back is named Jacob, so have your program take names until his name is entered.

# name = ""

# while name != "Jacob"
# 	puts "please enter your name:"
# 	name = gets.chomp.capitalize
# end

# puts "Thank you Jacob.  Please return the laptop."	

#**********************************************************************************#

# #Write a loop that continues to display random numbers between 1 and 10 until the number generated is 7.

# num = 0

# while num != 7
# 	puts num
# 	num = rand(10)
	
# end


