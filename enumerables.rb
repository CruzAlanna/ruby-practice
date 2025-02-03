#Enumerables and iterators
#Example: the .each loop // .each is an enumerable

#each 
# numbers = [1, 2, 3, 4, 5]

# numbers.each do |number|
#   puts number
# end

#.map // unlike the .each, .map creates another array
# numbers = [1, 2, 3, 4, 5]

# squared = numbers.map do |number|
#   number * number
# end

# puts "Original numbers: #{numbers.inspect}"#.inspect = same as using p. it will print it as the actual array. and is NOT specific to .map.
# puts "Squared numbers: #{squared.inspect}" #could have put "p squared"

#do the same with .each, we need to create the new array separate.

#(fill in the example)

#Names Cap exercise
# name = ["alanna", "kami", "haane"]

# cap_name = name.map do |n| #cap_name is the new array.
#   n.capitalize
# end

# puts "Original names: #{name.inspect}"
# puts "Capitalized names: #{cap_name}"

#Entire string capitalized
# name = ["alanna", "kami", "haane"]

# cap_name = name.map do |n| 
#   n.upcase
# end

# puts "Original names: #{name}"
# puts "All CAPS names: #{cap_name}"

#Add a last name and capitalize it
# name = ["alanna", "kami", "haane"]

# last_name = name.map do |n| 
#   #n.capitalize << " Cruz" #works but a more dynamic way is below.
#   n << " cruz"
# end

# puts "Original names: #{name}"
# puts "Added last names: #{last_name.split.map(&:capitalize).join(" ")}" #this above doesnt work. try again later to fix.

# #How you could capitalize each word in a string:
# sentence = "hi how are you today"
# puts sentence.split.map(&:capitalize).join(" ")

#.select
#numbers = [1, 2, 3, 4, 5, 6, 7, 8]

# even_numbers = numbers.select do |number|
#   number.even? #numbers are even? True/yes so we want to select those. if even, select it.
# end
# p even_numbers

#.reject
#using the same numbers array

# odd_numbers = numbers.reject do |number|
#   number.even? #We're rejecting whatever logic is in here. if even then reject it.
# end

# p odd_numbers

#filter words using .select

# words = ["pen", "paper", "water", "tabs", "cool"]

# long_words = words.select do |word| 
#   word.length > 4
# end
# p long_words

# short_words = words.reject do |word| 
#   word.length > 4
# end
# p short_words


# letters = ["a", "b", "c", "d", "e", "i", "o", "u"]
# vowels = ["a", "e", "i", "o", "u"]

# consonants = letters.reject do |letter| 
#   vowels.include?(letter) #.include? checking if the data entered is included
# end
# p consonants

#.reduce or .inject // calculates the total in a single pass

# numbers = [1, 2, 3, 4, 5]

# sum = numbers.reduce do |total, number|
#   total + number
# end 
# puts "The sum is #{sum}."

# numbers = [2, 4, 3]
# product = numbers.reduce do |total, number|
#   total * number #total meaning the total array.
# end 
# puts "The product is #{product}."

#.sort // sorting the data in some way.
#names = ["charles", "alanna", "damen"]
# numbers = [5, 10, 2, 3]
# sorted_names = names.sort #this is really all you need with the .sort
# p sorted_names #by default, it sorts strings in alphabetical order

# sorted_numbers = numbers.sort
# p sorted_numbers #with numbers- it sorts it from least to greatest.

# w_caps_names = ["charles", "alanna", "damen", "Alanna", "Charles"]
# #it treats capitals as priority. itll put the caps ones in order first and then the lowercase.
# sorted_w_caps_names = w_caps_names.sort
# p sorted_w_caps_names

#a way around it, to sort all strings regardless of caps is to change all to lowercase 
# w_caps_names = w_caps_names.sort_by { |name| name.downcase }
# p w_caps_names #notice that the caps were put after the lowercase bc it's located later in the array.
#numbers to switch the order from greatest to least instead, you could use <=>
# descending_numbers = numbers.sort do |a, b|
#   b <=> a
# end

# p descending_numbers


# #One liners! Short hand //usually for doing one thing. not recommended if you're doing more. 
# numbers.each do |number|
#   puts number
# end
# #these two are doing the same thing!
# numbers.each { |number| puts number}

#each //OTHER SHORT HAND BELOW
# person.each { |key, value| puts "#{key.capitalize}: #{value}" }

# # map
# squares = numbers.map { |number| number * number }

# # select 
# even_numbers = numbers.select { |number| number.even? }

# # reject
# consonants = letters.reject { |letter| ["a", "e", "i", "o", "u"].include?(letter) }

# # reduce 
# sum = numbers.reduce(0) { |total, number| total + number }

# # sort 
# sorted_numbers = numbers.sort { |a, b| a <=> b }

