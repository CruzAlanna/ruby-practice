require 'json'

contacts = []

begin
  file = File.open("contacts.json", "r")
  contacts = JSON.parse(file.read, symbolize_names: true)
  puts "Contacts loaded:"
rescue Errno::ENOENT
  puts "File not found."
rescue JSON::ParserError
  puts "Error parsing json data."
ensure
  file.close if file
end

def save_contacts(people)
  begin
    file = File.open("contacts.json", "w")
    file.write(JSON.pretty_generate(people))
    puts "Contacts saved."
  rescue IOError => e
    puts "An error occurred while saving contacts: #{e.message}"
  ensure
    file.close if file
  end
end

loop do
  puts "\nContact List Menu:"
  puts "1. Add contact"
  puts "2. Remove contact"
  puts "3. View contacts"
  puts "4. Search for contact"
  puts "5. Exit"
  puts "Enter your choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    puts "Enter contact name: "
    name = gets.chomp
    puts "Enter contact phone number: "
    phone = gets.chomp
    puts "Enter contact email: "
    email = gets.chomp
    contacts.push({ name: name, phone: phone, email: email })
    puts "Contact added."
  when 2
    puts "Enter contact name to remove: "
    name = gets.chomp
    contact = contacts.find { |c| c[:name] == name }
    if contact
      contacts.delete(contact)
      puts "Contact removed."
    else
      puts "Contact not found."
    end
  when 3
    puts "Contact List: You have #{contacts.length} contacts."
    contacts_sorted = contacts.sort_by { |contact| contact[:name].downcase }
    contacts_sorted.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact[:name]} - #{contact[:phone]} - #{contact[:email]}"
    end 
  when 4
    puts "Enter a contact name."
    s_name = gets.chomp
    name_s = contacts.select do |contact|
      s_name.include?(contact[:name])
    end
    puts name_s
 
  when 5
    puts "Goodbye!"
    save_contacts(contacts)
    break
  else
    puts "Invalid choice. Please try again."
  end
end