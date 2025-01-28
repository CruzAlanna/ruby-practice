# #Day 1
# #Calculator
# loop do
# puts "Enter your first number"
# first_num = gets.chomp.to_f

# puts "Enter your second number"
# second_num = gets.chomp.to_f

# add = first_num + second_num
# subtract = first_num - second_num
# multiply = first_num * second_num
# divide = first_num / second_num
# remainder = first_num % second_num
# puts "Choose an operation (add, subtract, multiply, divide, or remainder)."
# operation = gets.chomp.downcase 
#   if operation == "add" || operation == "addition" || operation == "plus"
#     puts "#{add}"
#   elsif operation == "subtract" || operation == "subtraction" || operation == "minus"
#     puts "#{subtract}"
#   elsif operation == "multiply" || operation == "product" || operation == "times"
#     puts "#{multiply}"
#   elsif second_num == 0
#     puts "Error : Cannot divide by zero!"
#     elsif operation == "divide" 
#     puts "#{divide}" 
#     elsif operation == "remainder" || operation == "modulo"
#     puts "#{remainder}"
#   else 
#     puts "Not a valid operation"
#   end

#   puts "Would you like to perform another calculation? Input yes or no."
#   continue = gets.chomp.downcase
#   if continue == "yes" || continue == "y"
#   else 
#     break
#   end
# end

# #Added the || in case the user input didn't quite exact to the specific wording of the operation given. This prevents some error that could occur. 

# #Day 2
# #Loop practice
# loop do
#   puts "How many times do you want to print the message: \"Ruby is fun!\"?"
#   count = gets.chomp.to_i

#   # count.times do 
#   #   puts "Ruby is fun!" 
#   # end
#   #or you can use the for loop (Don't forget to comment one or the other out!).
#   for i in 1..count 
#     puts "Ruby is fun!" 
#   end
#   puts "Would you like to try another number? Input: yes/no."
#   repeat = gets.chomp.downcase
#   if repeat == "yes" || repeat == "y"
#   else
#     puts "Closed"
#     break
#   end
# end

# #Day 3
#Contact List
# contacts = {
#   name: Alanna--phone: 123-4567 ,
#   name: Elijah--phone: 891-0111
# }

# loop do
#   puts "Please select from the following menu. Input a number. \n"
#   puts "Contacts Menu
# 1) Add Contact
# 2) Remove Contact
# 3) View Contacts
# 4) Exit"
# choice = gets.chomp.to_i

#   if choice == 1
#     puts "Enter new contact's name."
#     name = gets.chomp.capitalize
#     puts "Please enter #{name}'s number."
#     phone = gets.chomp
#     info = " { name: #{name}--phone: #{phone} } "
#     contacts.push(info)
#     puts contacts
#   elsif choice == 2
#     puts "Enter contact's name."
#     name = gets.chomp.capitalize
#     puts "Enter #{name}'s index number."
#     index = gets.chomp.to_i
#     contacts.delete_at(index)
#     if index >= contacts.length
#       puts "Invalid choice. Please enter a new index number."
#     end
#   elsif choice == 3
#     puts "Contacts"
#     puts contacts
#   elsif choice == 4
#     puts "Contacts complete"
#     break
#   else 
#     puts "Invaild choice. Please try again."
#   end
# end