#Day 1
#simple calculator
loop do
puts "Enter your first number"
first_num =gets.chomp.to_f
#puts first_num

puts "Enter your second number"
second_num =gets.chomp.to_f
#puts second_num

puts "Choose an operation (add, subtract, multiply, divide, or remainder)."
operation = gets.chomp.downcase 

if operation == "add" || operation == "addition" || operation == "plus"
  puts first_num + second_num
  elsif operation == "subtract" || operation == "subtraction" || operation == "minus"
  puts first_num - second_num
  elsif operation == "multiply" || operation == "product"
  puts first_num * second_num
  elsif second_num == 0
    puts "Error : Cannot divide by zero!"
    elsif operation == "divide" 
    puts first_num / second_num 
    elsif operation == "remainder" || operation == "modulo"
    puts first_num % second_num
  else 
    puts "Not a valid operation"
end

puts "Would you like to perform another calculation?Input yes or no."
continue = gets.chomp.downcase
if continue == "yes"
else 
  break
end

#!!incomplete, working on repeating with a loop, come back to this

#!!!run this first to check if it works and go from there!

#Added the || in case the user input didn't quite exact to the specific wording of the operation given. This prevents some error that could occur. 