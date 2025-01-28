contacts = [
{name: "Alanna", phone_number: 1234567, email: "mail@email.com"}
]

loop do
  puts "Address Book
1) Add a contact
2) View all contacts
3) Search for contact
4) Exit"
puts "Please input 1, 2, 3, or 4."
  choice = gets.chomp.to_i

  if choice == 1
    puts "Please enter New Contact name."
    name = gets.chomp.capitalize
    puts "Please enter New Contact phone number."
    phone_number = gets.chomp.to_i
    puts "Please enter New Contact email."
    email = gets.chomp.downcase
    #contacts.push({name: name, phone_number: phone_number, email: email})
    contacts << { name: name, phone_number: phone_number, email: email }
    #either of these work fine

  elsif choice == 2
    puts contacts

  elsif choice == 3
    puts "Enter a contact name:" 
    name = gets.chomp.capitalize
    index = 0
    if name == "#{contacts[index.to_i][:name]}" 
        puts contacts[index.to_i]
    else
      until name == "#{contacts[index.to_i][:name]}"
        index = index += 1
        if name == "#{contacts[index.to_i][:name]}"
          puts contacts[index.to_i]
        end
      end 
    end 

  elsif choice == 4
  puts "Closed"
   break

  else
    puts "Invalid choice : please try again :) \n "
  end
end




# contacts = [
# {name: "Alanna", phone_number: 1234567, email: "alanna@email.com"},
# {name: "Joan", phone_number: 7234769, email: "joan@email.com"},
# {name: "Bob", phone_number: 8034761, email: "bob@email.com"}
# ]

# puts "Enter a contact name:" 
# name = gets.chomp.capitalize
# #need to add for error
# #   else
# #     puts "Contact not found. Please try again."  
# #   end 
