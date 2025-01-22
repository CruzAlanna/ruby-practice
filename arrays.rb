#numbers = [1, 2, 3, 4, 5]
# names = ["Jess", "Noah", "Alanna"]
# p numbers
# puts numbers #notice difference in format when printed!
# puts numbers [0]
# p names
# puts names
# puts names.inspect #same format as puts
# puts names [2]

# #add to the array - .push (adds to the end of the array)
# names = ["Jess", "Noah", "Alanna"]
# p names
# names.push("Charles")
# p names

# p names
# names.insert (0, "Leon")
# p names


# #Removing an index
# names = ["Jess", "Noah", "Alanna"]

# p names
# names.pop #removes the last index
# p names
# names.delete("Noah")
# p names
#.delete_at() - deletes specific index

# puts "Colors in a rainbow:"
# colors = ["Red", "Orange", "Yellow", "Green", "Blue", "Purple"]
# p colors
# colors [3] = "Green is my #1"
# puts "These are my favorite!"
# puts colors [3]
# puts colors [4]
# puts colors [2]

# colors.each do |color|
#     puts "I like the color #{color}"
# end

# for color in colors
#   puts color
# end

#  p colors
# colors.push("Indigo")
# p colors

# p colors
# colors.pop
# p colors

# p colors
# colors.delete("Orange")
# p colors

#puts names.length
# puts numbers.length

# #while loops with arrays
# numbers = [1, 2, 3, 4, 5]
# number = 0
# while number < 4
#   puts numbers[number]
#   number += 1
# end

#p numbers

# #each loop
# numbers.each do |i|
# puts i + 1
# end

# #for loop
# for name in names
#   puts name
# end

# names.each do |name|
#   puts "Hi #{name}"
# end

# #nested arrays
# numbers = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]
# p numbers
# p numbers [1][1] #grabs index 5
# p numbers [2][0] #grabs 7
# p numbers [0][2] #grabs 3

# teams = [
#   ["Alice", "Bob"],      #team 1
#   ["Charlie", "David"],  #team 2
#   ["Eve", "Frank"]      #team 3
# ]
# p teams

# team_name = ["Purple", "Black", "Gold"]


# teams.each_with_index do |team, index|
#   # puts "Team #{team_name}" #have to change
#   team.each do |member|
#   puts " - #{member}"
#   end
# end

movies = [
  ["Romance", ["Pride & Prejudice", "Clueless"]],
  ["Horror", ["Conjuring", "Insidious"]]
]
movies.each do |genre, titles|
  puts "#{genre} Movies:"
  titles.each do |title|
   puts "- #{title}"
  end
end



