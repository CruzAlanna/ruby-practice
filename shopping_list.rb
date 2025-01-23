#Charles code version
# shopping_list = ["eggs"]
# loop do
# puts "Welcome to the menu. Please select an option
# 1 - Add item
# 2 - Remove item
# 3 - View List
# 4 - Exit"

#   choice = gets.chomp.to_i
#   if choice == 1
#     puts "Please add to shopping list"
#     item = gets.chomp
#    shopping_list.push(item)
#     puts " Your list has been update #{shopping_list}"
#   elsif choice == 2
#     puts shopping_list
#     puts "Please choose an item to remove from the shopping list. (Input index number)"
#     item = gets.chomp.to_i
#     if item > shopping_list.length
#       puts "Shopping list not long enough. Please input another index number"
#     else
#     shopping_list.delete_at(item)
#     puts " Your list has been update #{shopping_list}"
#     end
#   elsif choice == 3
#     puts shopping_list
#   elsif choice == 4
#     puts "Goodbye...(:heavy_multiplication_x:╭╮:heavy_multiplication_x:)"
#     break
#   else
#     puts "Selection invalid. Please input a number from 1-3
#     ♡♡"
#   end
# end


# #My own version
# shopping_list = ["bread"]
# loop do
# puts "Let's create a shopping list!
# 1) Add item
# 2) Remove item
# 3) View list
# 4) Exit"
# puts "Please input 1, 2, 3, or 4."
#   choice = gets.chomp.to_i

#   if choice == 1
#     puts "What item should we add to the list?"
#     item = gets.chomp
#     shopping_list.push(item)
#     puts "Great! #{item} is now on our list. \n "
#     puts "Updated shopping list: #{shopping_list}"
#   elsif choice == 2
#     puts "What item should we remove from the list. Please input index number?"
#   index = gets.chomp.to_i
#     shopping_list.delete_at(index)
#     puts "Great! That item is now off our list. \n "
#     puts "Updated shopping list: #{shopping_list}"
#   elsif choice == 3
#     puts "Shopping List: #{shopping_list} \n "
#   elsif choice == 4
#     puts "List is complete! \n"
#     break
#   else
#     puts "Invalid choice : please try again :) \n "
#   end
# end
 