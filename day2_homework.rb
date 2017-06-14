# # 1. Write a program that asks for a score (an integer), and assigns a letter grade based on the score. 

# # Letter grades are assigned as follows:
# # 100-90: A
# #  89-80: B
# #  79-70: C
# #  69-60: D
# # Less than 60: F
# # More than 100: "Wrong score"

# puts "What is your score?"
# score = gets.chomp.to_i

# if score < 60
# 	puts "That's an 'F'! You fail!!"
# elsif score >=60 && score < 70
# 	puts "You get a 'D'"
# elsif score >=70 && score < 80
# 	puts "You get a 'C'"
# elsif score >=80 && score < 90
# 	puts "You get a 'B'"	
# elsif score >=90 && score < 100
# 	puts "You get an 'A'"
# else
# 	puts "That's definitely the wrong score!"
# end		
 

# # 2. Create a program that takes two numbers from the user then find out if the first is divisible by the second. If not divisible, let the user know what the remainder is.

# puts "Give me a number:"
# num1 = gets.chomp.to_i

# puts "Give me another number:"
# num2 = gets.chomp.to_i


# if num1%num2 == 0
# 	puts "#{num1} is divisible by #{num2}"
# else
# 	puts "#{num1} is not divisible by #{num2}.  The remainder is #{num1%num2}."
# end		

 

# # 3. Create a program that takes a name (or any word, really), and spells it out, one letter at a time (horizontally). Then have the name/word spelled out in one line (vertically), but with commas between each letter (but not after the last letter).

# puts "Give me any word:"

# word = gets.chomp.upcase

# array = word.split("")

# array.each do |a|
# 	print "#{a} "
# end	

# puts "\n"

# length = array.length
# array.each_with_index do |a,i|
# 	if i == length-1 
# 		puts a

# 	else 
# 		puts "#{a},"
# 	end	
# end

 

# # 4. Write a program that translates one English word into Pig Latin. Because the rules for Pig Latin can vary, I'll be specific:

# # If the given word starts with a consonant, move only that consonant to end and then add "ay" to the end (e.g.: coffee -> offeecay, blogger -> loggerbay)
# # If the given word starts with a vowel, add "way" to the end of the word (e.g., office -> officeway)
 

# puts "Give me a word to translate to Pig Latin:"

# word = gets.chomp.downcase

# if word[0] == 'a' || word[0] == 'e' || word[0] == 'i' || word[0] == 'o' || word[0] == 'u'
# 	puts "Your new word is '#{word}way'"
# else
# 	arr = word.split("")
# 	char = arr.reverse!.pop
# 	arr.reverse!
# 	word = "#{arr.join("")}#{char}"
# 	puts "Your new word is #{word}ay"	

# end

# # or another way to do this
# puts "Give me a word and I'll give it back in Pig Latin"
# word = gets.chomp.downcase

# if word[0] =='a' || word[0] =='e' ||word[0] =='i' ||word[0] =='o' ||word[0] =='u'
# 	puts "Your Pig Latin word  is '#{word}way'"
# else
# 	last_letter = word.length - 1
# 	pl_word = word[1..last_letter]
# 	puts "Your Pig Latin word is '#{pl_word}#{word[0]}ay'"
# end	


# # 5. Create a Ruby program that finds how many prime numbers are between 1 and a number given by the user. Hint: look through the Ruby Docs on the Prime class, and note that sometimes you must import, or require, certain Ruby libraries.

# require "Prime"

# puts "Please enter a number:"
# num = gets.chomp.to_i

# arr = []
# Prime.each(num) do |prime|
# 	arr.push(prime)
# end	

# puts "There are #{arr.length} prime numbers between 1 and #{num}."



# # 6. Write a Rock, Paper, Scissors game where a user can play against the computer.

# # The user should enter rock, paper, or scissors (remember to account for differences in capitalization!), and the computer will choose a random value.
# # After each turn display the score (user wins vs. computer wins).
# # Whichever player reaches five wins first is the winner!

# puts "Choose rock, paper, scissors"
# choice = gets.chomp.downcase

# computer = rand(1..100)

# # 0-33 Rock
# # 34-66 Paper
# # 66-100 Scissors

# if computer < 33
# 		if choice == "rock"
# 			puts "Computer chose rock! It's a tie!"
# 		elsif choice == "paper"
# 			puts "Computer chose rock!  You win!"	
# 		else 
# 			puts "Computer chose rock!  You lose."	
# 		end	
# elsif computer >=34 && computer <66
# 	if choice == "rock"
# 			puts "Computer chose paper! You lose."
# 		elsif choice == "paper"
# 			puts "Computer chose paper!  It's a tie!"	
# 		else 
# 			puts "Compter chose paper!  You win!"	
# 		end		
# else 
# 	if choice == "rock"
# 				puts "Computer chose scissors! You win!"
# 			elsif choice == "paper"
# 				puts "Computer chose scissors!  You lose."	
# 			else 
# 				puts "Compter chose scissors!  It's a tie!"	
# 			end		
# end	


# # 7.  Fizzbuzz: Write a program that prints the numbers from 1 to 100. But for multiples of three (3) print "Fizz" instead of the number, and for the multiples of five (5) print "Buzz". For multiples of both three (3) and five (5), print "FizzBuzz".

# count = 1

# until count == 101
# 	if count%3 == 0 && count%5 != 0
# 		puts "Fizz"
# 	elsif count%5 == 0	&& count%3 != 0
# 		puts "Buzz"
# 	elsif count%5 == 0 && count%3 == 0
# 		puts "FizzBuzz"
# 	else
# 		puts count		
# 	end
	
# 	count +=1
# end		

# # 8. Create an array of test scores (anywhere from 0 to 100; sorry, no extra credit was given).

# #     Now I want a couple things:

# # Print out the scores in ascending order.
# # Find the average of those test scores and print it out.


# scores = [80, 20, 100, 100, 75, 90, 89, 92]
# scores.sort!

# scores.each do |s|
# 	puts s
# end

# length = scores.length

# sum = 0
# scores.each do |s|
# 	sum +=s
# end

# avg = sum/length

# puts "The average test score is #{avg}"	




# # 9. Create a program with a hash of countries & capitals - don't worry I'll give it to you:

# # cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

# #     Ask the user for the capital of each country, and tell them if they are Correct or Wrong. Also, keep score and give their score at the end of the quiz. Maybe have some smart-alecky comments about their score (see example below).



# cos_n_caps = {"USA" => "Washington, DC", "Canada"=>"Ottawa", "United Kingdom"=>"London", "France"=>"Paris", "Germany"=>"Berlin", "Egypt"=>"Cairo", "Ghana"=>"Accra", "Kenya"=>"Nairobi", "Somalia"=>"Mogadishu", "Sudan"=>"Khartoum", "Tunisia"=>"Tunis", "Japan"=>"Tokyo", "China"=>"Beijing", "Thailand"=>"Bangkok", "India"=>"New Delhi", "Philippines"=>"Manila", "Australia"=>"Canberra", "Kyrgyzstan"=>"Bishkek"}

# puts "Let play a game! I'll give you a country, you give me the capital!"
# score = 0
# cos_n_caps.each do |k,v|

# 		puts "What is the capital of #{k}?"
# 		response = gets.chomp
# 		if response == v
# 			score +=1
# 			puts "You are correct!"
# 		else
# 			puts "Sorry, the answer is #{v}"
# 		end		
# end

# puts "Your final score is #{score}"