#file i/o - being able to "talk to" other files 
# file input (i)
# file outputs (o)

#READING a specific file
#This begin-rescue block prints the code into the terminal. pulling the code from another file.
# begin
#   file = File.open("catalog.rb", "r ") #make sure that the file name matches exact to the file that you are pulling from. #"r" = read 
#   contents = file.read
#   puts contents
# rescue Errno::ENOENT #writing this error bc it has to be an existing file for reading
#   puts "File not found."
# ensure
#   file.close if file
# end

# #if you dont want to "read" the entire file.
# line_t = 0
# begin
#   file = File.open("data.txt.rb", "r") 
#   file.each_line do |line|
#     puts "Read line: #{line.chomp}"
#     line_t += 1
#   end
#   puts file.readlines #This does the same as above
#   puts "Total # of lines: #{line_t}"
# rescue Errno::ENOENT 
#   puts "File not found."
# ensure
#   file.close if file
# end

#if the file you're pulling from is located in another folder, you need to specify where that file is.
#should use the "file.close". it will work without, but when using the begin rescue block, it connects the two files and if you leave that connection opened, you might run into an issue later on down the road with so many open.

#WRITING into a specific file
#this overwrites what is in this file.
# begin
#   file = File.open("example.txt.rb", "w") #"w" = write #if you type in a file that doesn't exist, it will automatically create a file under that name.
#   file.puts "Please input your name."
#   file.puts name = gets.chomp.capitalize
#   file.puts "Hello #{name}!"
# rescue IOError => e
#   puts "An error has occured."
# ensure
#   file.close if file
# end

#APPENDING/ Modifying the end of a specific file instead of overwriting 
# begin
#   file = File.open("example.txt.rb", "a") #"a" = append 
#   file.puts " /n Hi, it's Alanna from file_io.rb!"
# rescue IOError => e #using this bc you dont want to accidentally make a new file when you dont want
#   puts "An error has occured."
# ensure
#   file.close if file
# end

#READING AND THEN WRITING (using "r+")

# begin
#   # Open an existing file for reading and writing.
#   # The file pointer starts at the beginning of the file.
#   file = File.open("example.txt", "r+")

#   puts "Original file content:"
#   # Read the file's entire content (the pointer moves to the end).
#   puts file.read

#   # Move the file pointer back to the start, so we can overwrite.
#   file.rewind

#   # Overwrite content with new text.
#   file.puts "This is new content overwriting the old!"

#   puts "File content has been overwritten."
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end


#READING AND THEN APPENDING (using "a+")
# begin
#   # "a+" opens the file for reading AND appending.
#   # If the file doesn't exist, it creates one.
#   file = File.open("example.txt", "a+")

#   # Go back to the start of the file to read what's currently there
#   file.rewind
#   puts "Current file content:"
#   puts file.read

#   # Append new data at the end
#   file.puts "Appending new data at #{Time.now}"

#   # Confirm changes by reading again
#   file.rewind
#   puts "\nUpdated file content:"
#   puts file.read
# rescue Errno::ENOENT
#   puts "File not found."
# ensure
#   file.close if file
# end


#WRITING INTO JSON
# require 'json' #this is bc we're using the json code #using this bc we're putting the JSON below

# data = {
#   name: "Alice",
#   age: 30,
#   hobbies: ["reading", "hiking", "coding"]
# }

# begin
#   file = File.open("data.json", "w")
#   file.write(JSON.pretty_generate(data)) #the .pretty_gen converts the format of the code you're adding to better suit json
#   puts "Data saved to data.json."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end


# contacts = [
#   { name: "Bob", phone: "555-1234", email: "bob@example.com" },
#   { name: "Carol", phone: "555-5678", email: "carol@example.com" }
# ]


# require 'json' #Important to have!!

# begin
#   file = File.open("contacts.json", "w")
#   file.write(JSON.pretty_generate(contacts))
#   puts "Contacts saved to contacts.json."
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end


#READING and APPENDING in JSON
# require 'json'

# begin
#   file.rewind
#   puts "Current file content:"
#   puts file.read


#   file = File.open("contacts.json", "a+")
#   file.write(JSON(contacts)) #or file.write("Appended this second array.") -for a string-
#   puts "Contacts saved to contacts.json."
#   file.rewind
#   puts "\nUpdated file content:"
#   puts file.read
# rescue IOError => e
#   puts "An error occurred: #{e.message}"
# ensure
#   file.close if file
# end

#READ JSON file
# require 'json'

# begin
#   file = File.open("contacts.json", "r")
#   data = JSON.parse(file.read)
#   puts "Contacts loaded:"
#   data.each do |contact|
#     puts "Name: #{contact['name']}, Phone: #{contact['phone']}, Email: #{contact['email']}"
#   end
# rescue Errno::ENOENT
#   puts "File not found."
# rescue JSON::ParserError
#   puts "Error parsing JSON data."
# ensure
#   file.close if file
# end




