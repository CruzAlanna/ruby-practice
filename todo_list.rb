#Command-Line To-Do List Application
# Project Requirements:
# User Interface:
# Display a menu with options:
# Add a task
# View tasks
# Mark task as completed
# Delete a task
# Exit
# Functionalities:
# Add a Task:
# Prompt the user to enter a task description.
# Store the task in an array.
# View Tasks:
# Display all tasks with their status (completed/not completed).
# Mark Task as Completed:
# Allow the user to mark a specific task as completed.
# Delete a Task:
# Allow the user to delete a specific task.
# Exit:
# Terminate the application.

#Plan
#IMPORTANT: dont forget to run the code after every step to make sure it works. and were making a function for each menu option!!
#IMPORTANT: items in the function are not available to those outside the function, keep in mind. use parameter if needed
#*refer to menu exercise to help as well as the words filter and grades
#Figure out if we will do a nested array instead of one big to do list

#____Create menu, add options
# ____Prompt user 
# ____(puts telling the user to add a task), create array, 
#____^Add a task 
# use "array name".push()

#View task
# (come back)(return?) we will see (completed array)

#Mark task
# prompt user to input index of desired task to mark completed

# Delete a task
# use "array name".delete_at() |(prompt user to iput index NOT task itself)

# ____Exit
# ____use break (as in previous)

#Issues:
#IN ADD
#!!!Figure out why added tasks dont show in todo_list array when choice == 3

#ADD
# def add(a_task)
#   a_task = []
#   puts "What task would you like to add?"
#   i_task = gets.chomp.capitalize
#   a_task.push(i_task)
#   return a_task
# end
#VIEW

#MARK

#DELETE


puts "Let's create a To-Do List"
todo_list = ["Laundry"]

loop do
  puts " \n Menu 
1) Add task
2) View tasks
3) Mark task as completed
4) Delete a task
5) Exit"
puts "Please input 1, 2, 3, 4, or 5."
choice = gets.chomp.to_i

  if choice == 1
    # p add(todo_list)
    puts "What task would you like to add?"
    i_task = gets.chomp.capitalize
    todo_list.push(i_task)
    
  elsif choice == 2
    puts "To-do List:"
    puts todo_list

  elsif choice == 3
    puts "Which task would you like to mark as complete? Input the index number."
    c_task = gets.chomp.to_i
    todo_list.each_with_index do |index|
    todo_list[c_task] = "Complete:" + index
    end
    puts "Task is marked as complete."

  elsif choice == 4
    puts "What task would you like to delete? Input an index number."
    r_task = gets.chomp.to_i
    todo_list.delete_at(r_task)
    
  elsif choice == 5
    break
    puts "To-do list done!"
  else
    puts "Invalid choice : please try again :) \n "
  end
end




# # #within functions 
# # # incomplete = []
# # # complete = []

# # Reference
# words = ["cup", "hat", "pencil", "common"]

# def filter_words(vocab)
#   #short_words = []
#   long_words = []

#   vocab.each do |word|
#     #p word.length
#     if word.length <= 3
#       # short_words.push(word)
#     elsif word.length > 3
#       long_words.push(word)
#     end
#   end

#   # return short_words
#   return long_words
# end

# p filter_words(words)



#Delete

# def delete(d_task)
#   incomplete = []

#   d_task.each do
#     puts "What task would you like to delete? Input the task index."
#     r_task = gets.chomp.to_i
#     incomplete.delete_at(i_task)
#   end
#   return incomplete
# end

