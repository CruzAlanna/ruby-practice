#Location:
# \\wsl.localhost\Ubuntu\home\cruz_alanna\ruby-practice\practice.rb

# "Hello Class" #This message will say hi to the class.

# Variables

# string
# name= "Alanna"
# puts name

# integer
# first_number = 2
# second_number = 18
# sum = first_number + second_number

#puts first_number
#puts second_number
#puts first_number + second_number
#puts sum

#float1 = 5.5
#float2 = 4.4
#sum_of_floats = float1 + float2

#puts sum_of_floats

#!!!Boolean when tested, had an error. :/

#Boolean - true or false

# is_raining = false

# if is_raining == true
#     puts "bring umbrella"
# else 
#     puts "don't bring umbrella"
# end

# name1 = "Alanna"
# name2 = "Elijah"

# #concatenation
# puts "Hi my name is " + name2

# #interpolation
# puts "Nice to meet you #{name2}"

#Ranges 
# ('a'..'z').each { |char| puts char }
#('e'..'q').each { |char| puts char }
#(3..18).each { |num| puts num }

# array = [1,2, 3, 4, 5]
# array.each do |num|
#     puts num
# end

# puts "Hi, give me a number and I'll double it!" 
# input = gets.chomp 
# converted_input = input.to_i
# doubled = converted_input * 2
#  puts "Double of #{input} = #{doubled}"

# puts "Please input a start"
# first_input = gets.chomp
# first_converted = first_input.to_i
# # puts first_converted
# # puts first_converted.class
# puts "Please put an end number"
# second_input = gets.chomp
# second_converted = second_input.to_i
# # puts second_converted
# # puts second_converted.class
# puts (first_converted..second_converted).sum

# input = gets
# input2 = gets.chomp
# puts input
# puts input2
#Compare both inputs, if theyre the same, print "theyre the same"; different, print not same.

#if input == input2
  #  puts "They're \"chip\" the same."
# else 
#     puts "Not the same."
# end

#Week 2 Day 2
# a = 20
# b = 4

# sum = a + b 
# difference = a - b 
# product = a * b 
# quotient = a / b 
# puts "Sum: #{sum}, Difference: #{difference}, Product: #{product}, Quotient: #{quotient}"

# first_name = "Alice" 
# last_name = "Johnson" 
# hobby = "painting"

# puts "My name is " + first_name + " " + last_name + ". I enjoy " + hobby + "." 
# puts "My name is #{first_name} #{last_name}. I enjoy #{hobby}."

# apples = 5
# bananas = 3 
# sum = apples + bananas
# puts "I have #{sum} total fruits."

#When I added the ID part, it adds the Not Eligible from the first if/else statement
# puts "Enter your age:" 
# age = gets.chomp.to_i 

# puts "Enter your city:" 
# city = gets.chomp.downcase 

# puts "Do you have an ID?"
# has_id = gets.chomp.downcase

# if age >= 18 && city == "Tamuning" 
#   puts "Eligible" 
# else 
#   puts "Not eligible" 
# end
# if has_id == "yes"
#     puts "Eligible"
# else
#     puts "Not eligible"
# end

#Time-Based Greeting:
# puts "What time is it? (Write with decimal. Ex. 13.34 = 1:34 pm)"
# hour= gets.chomp.to_i

# if hour >= 5 && hour <= 11
#     puts "Good morning"
# elsif hour >= 12 && hour <= 17
#     puts "Good afternoon"
# elsif hour >= 18 && hour <= 21
#     puts "Good evening"
# elsif hour >=22  && hour <= 24
#     puts "Good night"
# else 
#     puts "Not a valid input."
# end


# Day 3
# number = 0

# if number >= 10
#     puts "the number is pretty high"
# elsif number <= 5
#     puts "the number is pretty low"
# end

#Comparison Operators: >=, <=, ==, !=

# word = "Success"

# if word.downcase == "success"
#     puts "Great Work"
# else
#     puts "Try Again"
# end

# puts "Enter a number:"
# number = gets.chomp.to_i

# if number > 0
#     puts "positive"
# elsif number <0
#     puts "negative"
# else puts "zero"
# end

#Movie
# puts "Enter your age."
# age = gets.chomp.to_i
# puts "Do you have your ID?"
# has_id = gets.chomp

# if age >= 18 || has_id.downcase == "yes"
#     puts "You can watch the movie."
# else
#     puts "You cannot watch the movie."
# end

#Number Guessing Game                                   Step by step breakdown
# secret = rand(1..10) #rand: random duh lol         #set the secret to a random number
# guess = nil #nil: same as null, means nothing, not 0   #set guess to nil
# count = 1

# loop do
#     puts "Do you want to play again?"
#     reply = gets.chomp
#     if reply.downcase == "no"
#       break
#     end
#     until guess == secret               #conditional that will keep running until guess = secret
#     puts "Guess a number between 1 and 10:" #prompting for the user to guess a number
#     guess = gets.chomp.to_i                   #setting guess to the user's number

#      if guess < secret                      #conditional to check if guess less than secret
#         puts "Too low!"                        #print out too low
#      elsif guess > secret                     #conditional to check if guess is greater than secret
#         puts "Too high!"                        #prints out too high
#      else 
#         puts "Correct! The number was #{secret}."  #if neither condition is met, it goes here
#      end  
#     count += 1
#      if count == 4
#         break 
#      end
#     end
# end

  #loops
  #times loop
# 10.times do 
#     puts "Hello World!"
# end

#while loop
# n = 0
# while n < 10
#     puts n
#     n = n + 1 #once this condition is met, the loop will break.
# end

# #until loop
# n = 0
# until n == 10
#     puts "Hello!"
#     n += 1 #same thing as n = n + 1, just different format
# end

#Day 4 
#Alanna