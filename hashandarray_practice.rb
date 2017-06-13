# my_array = [1,2,4,5]

# my_array.each do |x|
# 	puts x
# end


# colors = ["red", "purple", "green", "blue"]


# colors.each_with_index do |color, index|

# 	puts "#{color} is in index number #{index} in my array."

# end


#***********************************#
# # Create an array of animals...

# favorite = "dog"
# animals = ["cow", "cat", "horse", "dog", "bird"]

# # Use .each to iterate through and print out the contents of your array.
# animals.each do |a|
# 	if a == favorite
# 		puts "I love #{a}s "

# 	else
# 		puts "I don't care for #{a}s "
# 	end	
# end	


# #without .each interator


# length = animals.length
# count = 0
 
# length.times do
# 	if animals[count] == favorite
# 		puts "I love #{animals[count]}s "
		
# 	else
# 		puts "I don't care for #{animals[count]}s "
		
# 	end
# 	count +=1	
# end	

#***********************************#
# state = {"Name" => "Georgia", "Capital"=>"Atlanta", "Population" =>10033456, "Area" => "50000 sq/miles"}


# state.each do |k, v|
# 	puts "The #{k} is #{v}"
# end	

#***********************************#
#Hash .each exercise
# my_hash = {}

# puts "What is your name?"
# my_hash["name"] = gets.chomp.capitalize
# puts "What is your favorite food?"
# my_hash["food"] = gets.chomp
# puts "What is your Hometown?"
# my_hash["home"] = gets.chomp.capitalize
# puts "How old are you?"
# my_hash["age"] = gets.chomp.to_i


# # puts "This is #{my_hash["name"]}. They are #{my_hash["age"]}-years-old, from #{my_hash["home"]}, and their favorite food is #{my_hash["food"]}. "


# my_hash.each do |k, v|

# 	case k
# 		when "name"
# 			puts "This is #{v}."
# 		when "age"	
# 			puts "They are #{v}-years-old."
# 		when "home"	
# 			puts "They are from #{v},"
# 		when "food"
# 			puts "Their favorite food is #{v}."
# 	end		

# end	

# #*****************************************#
# #Array .each exercise
# numbers = []


# 5.times do
# 	puts "Give me a number"
# 	num = gets.chomp.to_i
# 	numbers.push(num)
# end


# puts "The smallest number is #{numbers.min} and the largest number is #{numbers.max}."

# sum = 0 
# prod = 1
# numbers.each do |n|
# 	sum += n
# 	prod *= n
# end

# puts "The sum of all the numbers is #{sum} and the product of all the numbers is #{prod}."


#***********************************#
#Car dealer Hash .each practice


cars = {"Civic" =>"Honda", "Accord" =>"Honda", "Camry"=>"Toyota", "Fusion" => "Ford", "Passat" =>"Volkswagon"}


puts "What model car are you looking for today?"

model = gets.chomp.downcase.capitalize

found = false # This value changes only if our model is found
cars.each do |k, v|
	if k == model
		puts "Oh, you are looking for a #{model}? Our #{v} section is right this way!"
		found = true #the model was in our hash, so found changes to true
	end
end

if found == false  #if the model is not in our hash, then the value of false did not change and we put sorry message.
	puts "I'm sorry, we don't carry #{model}s at this location."
end