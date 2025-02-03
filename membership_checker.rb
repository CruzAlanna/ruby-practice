class InvalidMembershipError < StandardError
end

def check_membership
  valid_ids = ["AB123", "CD456", "EF789"]
  attempts = 0

  begin
    attempts += 1

    puts "Enter your membership ID: "
    user_id = gets.chomp.strip.capitalize #.strip - no spaces #could use .upcase too instead of .capitalize

    unless valid_ids.include?(user_id)
      raise InvalidMembershipError, "That ID is not recognized."
    end

    puts "Welcome! Access granted."
    # If this line is reached, no error was raised

  rescue InvalidMembershipError => e
    puts e.message  # e.message is "That ID is not recognized."
    
    if attempts < 3
      puts "Please try again..."
      retry  # restarts the 'BEGIN' block
    else
      puts "Too many failed attempts. Access denied."
    end 

  ensure
    puts "ID check finished."
  end
end

# Main program flow

puts check_membership

begin 
  puts check_membership
rescue NameError
  puts "Error"
end 

# #Reference Only
# begin 
#   puts divide_numbers(a, 0)
# rescue NameError
#   puts "Error: Both variables have to be an integer."
# end 