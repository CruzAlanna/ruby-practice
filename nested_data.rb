# #tic-tac-toe
# board = [
#   ['', '', ''],
#   ['', '', ''],
#   ['', '', '']
# ]

# p board
# #assign "X" and "O" locations as you play
# board[][] = "X"
# board[][] = "O"

# grid = [
#   [1, 2, 3],
#   [4, 5, 6],
#   [7, 8, 9]
# ]

# #three different ways to print each number out
# grid.each do |index|
#   puts index
# end

# grid.each |a, b, c|
# p a 
# p b 
# p c
# end 

# grid.each do |number|
#   number.each do |num|
#     p num
#   end
# end


student = {
  name: "John",
  grades: {
    math: "76",
    science: "80",
    english: "95",
    art: "100"
  },
  contact: {
    email: "john@mail.com",
    phone: "123-4567"
  }
}

student[:grades].each do |subject, score|
  puts subject, score
end

student[:contact].each do |via, info|
  puts "#{via.capitalize}: #{info}"
end

students = {
  john: {math: "76", english: "95", art: "100" },
  jane: {math: "90", english: "76", art: "92" },
  jack: {math: "65", english: "98", art: "100" }
}

# students.each do |name, grades|
#   puts "#{name}- "
#   grades.each do |subject, score|
#     puts "#{subject}: #{score}"
#   end
# end

# # change data
# p students[:jack]
# students[:jack][:math] = 78
# p students[:jack]

# # delete data
# p students[:jack]
# students[:jack].delete(:english)
# p students[:jack]

# # add = adding a new key value pair (pe: 100)
# p students[:jack]
# students[:jack][:pe] = "100"
# p students[:jack]


