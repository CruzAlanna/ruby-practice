loop do
  puts "Menu 
1) Greet
2) Tell a joke
3) Exit"
puts "Please input 1, 2, or 3."
  choice = gets.chomp.to_i

  if choice == 1
    puts "Hello, what is your name?"
    name = gets.chomp.capitalize
    puts "Nice to meet you #{name}. \n "
  elsif choice == 2
    puts "Guess what?"
    puts "Chicken Butt! Haha \n "
  elsif choice == 3
    break
  else
    puts "Invalid choice : please try again :) \n "
  end
end