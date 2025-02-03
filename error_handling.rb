#runtime error
#Example: puts 10 / 0

#begin: Starts a block of code that might raise an exception.
#rescue: Catches specific exceptions and allows you to handle them.
#ensure: Code that runs whether an exception occured or not. Dont need it but it's nice to have

# def divide_numbers(a, b)
#   begin
#     result = a / b
#   rescue ZeroDivisionError #could also leave blank but then have to have a more broad puts below.
#     puts "Error: Cannot divide by zero."
#     result = nil #nil = nothing, NOT 0. Keep in mind
#   rescue TypeError
#     puts "Error: type error cannot use string."
#   rescue #use the rescues as elsifs and else (last rescue should be like else, last if all else fails or doesnt apply)
#     puts "Unknown error"
#     result = nil
#   ensure
#     puts "Division attempt completed."
#   end
#   return result
# end 


# begin #had to wrap the NameError in its own rescue because when you ran the function, it failed right at the line that it's at. its not failing in the function. 
#   puts divide_numbers(a, 0)
# rescue NameError
#   puts "Error: Both variables have to be an integer."
# end 


# puts divide_numbers(10, 0) #Outputs error message provided and puts nil
# puts divide_numbers(10, 2) #Outputs the ensure puts
#make sure when you call the function, it matches!

# puts divide_numbers(10, 0)




#custom error handling
#ZeroDivisionError is already an error in ruby. Negative number is not, lets make it 
#StandardError is also something in ruby 

# class NegativeNumberError < StandardError
# end

# def square_root(number)
#   raise NegativeNumberError, "Cannot take square root of a negative number." if number < 0
  
#   Math.sqrt(number) #shortcut to doing a squart root, already in ruby, its returning
# end
# #raise is doing the same as begin rescue and end, "one-liner"

# begin
#   puts square_root(9) 
#   puts square_root(-4)
# rescue NegativeNumberError => e
#   puts e.message
# end
# puts square_root(25)




# class InvalidInputError < StandardError
# end

# def get_positive_number
#   print "Enter a positive number: "
#   number = gets.to_i
#   raise InvalidInputError, "Number must be positive." if number <= 0
#   number
# rescue InvalidInputError => e
#   puts e.message
#   retry
# end

# num = get_positive_number
# puts "You entered: #{num}"




#Work on this!!!
# class InvalidInputError < StandardError
# end

# def square_n(number)
#   raise InvalidInputError, "Must input an integer." unless [Integer].include?(number) #this is saying that unless the number inclused an integer, raise the error message

#   squared_number = (number) ** 2
# rescue InvalidInputError => e
#   puts e.message
# end

# # puts square_n(3)

# begin
#   puts square_n(j)
# rescue NameError => e
#   puts e.message
# end



# def ask_yes_or_no
#   attempts = 0

#   begin
#     attempts += 1
#     print "Please enter Y/YES or N/NO (Attempt ##{attempts}): "
#     input = gets.chomp.strip.upcase

#     # Check if input is one of "Y" or "N" using a standard array
#     raise "Invalid input. You must type 'Y/YES' or 'N/NO'." unless ["Y", "N"].include?(input) || ["YES", "NO"].include?(input)

#     # if !["Y", "N"].include?(input)
#     #   raise "Invalid input. You must type 'Y' or 'N'."
#     # end    

#     puts "You entered: #{input}"
#     return input

#   rescue => e
#     puts e.message
#     if attempts < 3
#       retry
#     else
#       puts "Failed after 3 attempts."
#       return nil
#     end
#   ensure
#     puts "ask_yes_or_no operation completed."
#   end
# end

# answer = ask_yes_or_no
# p "Final answer: #{answer}"



# attempts = 0

# begin
#   attempts += 1
#   puts "Attempt #{attempts}"
#   raise "An error occurred." if attempts < 3
# rescue => e
#   puts e.message
#   retry if attempts < 3
# ensure
#   puts "Operation completed."
# end


#table this
# def get_number
#   print "Please enter a number: "
#   input = gets.chomp.to_i
#   raise "That's not a valid number." unless input > 0
#   input.to_i
# rescue => e
#   puts e.message
#   retry
# end

# number = get_number
# puts "You entered: #{number}"

# #input =~ /^\d+$/ #wtf is this fr idek



