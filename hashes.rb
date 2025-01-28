#used to store data in a specific format
#uses a key (key value pair)
#can think of a hash as a dictionary

# {key => value, key => value}
# names = ["Alanna", "Noah", "Audreana"]

# person = {
#   "name" => "Alice",
#   "age" => 30,
#   "city" => "New York"
#   }

#   p person["name"] #as long as you know the key, you can find the data.

#   person = {
#   name: "Alice", #you dont have to put it as a string, name is now a symbol
#   "age": => 30,
#   "city": => "New York"
#   }
# p person[:name] #now that it's a symbol, we write it out like this. If kept as a string, write it out like the one before.


#My hash
# person = {
#   name: "Alanna",
#   age: 23,
#   hobby: "reading books"
# }

# person[:hobby] = "eating"
# person[:favorite_food] = "pizza"
# person.delete(:age)

# p person[:name]
# p person[:age]
# p person[:hobby]

# person = {
#   "name" => "Alanna",
#   "age" => 23,
#   "hobby" => "reading books"
# }

# person["favorite_food"] = "mango"

# p person

# p person["name"]
# p person["age"]
# p person["hobby"]

# puts "My name is #{person["name"]}."
# puts "I am #{person["age"]} years old."
# puts "I love #{person["hobby"]}."



# fruit = {
#   apples: 4,
#   oranges: 7,
#   grapes: 2
# }

# fruit[:apples] = 3 #changing the value, has to be placed under the original hash data set
# fruit[:strawberries] = 10 #dont need to use .push, can just add data like this, as long as you set the key to something.

# fruit.delete(:grapes) #do this to delete.

# p fruit

# puts fruit[:apples] + fruit[:oranges]

# puts "I have #{fruit[:apples]} apples and #{fruit[:oranges]} oranges, and a total of #{fruit[:apples] + fruit[:oranges]} fruit."

#.each do loop with hashes
# person = {
#   name: "Alanna",
#   age: 23,
#   hobby: "reading books"
# }

# p person

# person.each do |key, value|
#   puts "key = #{key} and value = #{value}"
# end 

#nested arrays and hashes
# people = [
# {name: "Alanna", age: 23, city: "Tamuning"},
# {name: "Emily", age: 22, city: "Bedford"},
# {name: "Maile", age: 22, city: "Oahu"},
# {name: "Elijah", age: 26, city: "Mangilao"}
# ]

# people[4] = {name: "Mamie", age: 1, city: "Tamuning"}
# people[0][:age] = 22 
# # people.delete(people[0]) 
# people.delete(people[2][:age]) #doesn't work 

# people.each do |person| #we have to access the array (|(each data set)|)
#   # accessing specific parts of the data inside the interpolation.
#   puts "Hi my name is #{person[:name]}. I'm #{person[:age]} years old, and I'm from #{person[:city]}."
# end

# p people
