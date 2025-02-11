# abstraction - hide any complex logic/implementation detailes and anything the user might not need

#private method- anything below will only be accessible in the class
# class CoffeeMachine
#   def make_coffee(type)
#     boil_water
#     brew_coffee(type)
#     pour_in_cup
#     add_sugar_and_milk
#     return "#{type.capitalize} is ready!"
#   end

#   private

#   def boil_water
#     puts "Boiling water ..."
#   end

#   def brew_coffee(type)
#     puts "Brewing #{type} coffee ..."
#   end

#   def pour_in_cup
#     puts "Pouring coffee into the cup ..."
#   end

#   def add_sugar_and_milk
#     puts "Adding sugar and milk ..."
#   end
# end

# machine = CoffeeMachine.new
# puts machine.make_coffee("espresso")
# # puts machine.boil_water #errors out bc it's not available 

# class AppDownloading
#   def initialize(app)
#     @app = app
#   end

#   def download
#     send_request
#     load_data
#     transferring_data
#     return "#{@app.capitalize} is downloaded!!"
#   end

#   private

#   def send_request
#     puts "Sending request to server ..."
#   end

#   def load_data
#     puts "Loading data ..."
#   end

#   def transferring_data
#     puts "Transferring data ..."
#   end
# end

# app1 = AppDownloading.new("Tiktok")
# puts app1.download

#encapsulate - hiding details vs abstractions focusing on certain details
# use abstraction when you want to make something easier for anyone to use
# use encapsulation when you dont want everyone to know exactly whats going on from your pov

# class BankAccount
#   def initialize(owner, balance)
#     @owner = owner
#     @balance = balance
#   end

#   # Public method: anyone can call these
#   def deposit(amount)
#     @balance += amount
#   end

#   def withdraw(amount)
#     if sufficient_funds?(amount)
#       @balance -= amount
#     else
#       puts "Insufficient funds!"
#     end
#   end

#   private

#   # Private method: only the class itself can call this
#   def sufficient_funds?(amount)
#     amount <= @balance
#   end
# end

# require 'json'

# books = []

# #when editing, make add and remove in the main, put the json r and w in the private


# class Library
#   attr_accessor :book

#   def initialize(book)
#     @book = book
#   end

#   def borrow_book
#     puts "#{@book} has been borrowed from the Library."
#     remove
#   end

#   def return_book
#     puts "#{@book} has been returned to the Library."
#     add
#   end


#   private

#   def add
#     puts "< #{@book} has been added to the Library. >"
#   end

#   def remove
#     puts "< #{@book} has been removed from the Library. >"
#   end
# end

# student1 = Library.new("The Big Book")
# student1.borrow_book
# student1.return_book


# #when adding library saved contents reference
# contacts = []

# #use when we want to view library books collection
# begin
#   file = File.open("contacts.json", "r")
#   contacts = JSON.parse(file.read, symbolize_names: true)
#   puts "Contacts loaded:"
# rescue Errno::ENOENT
#   puts "File not found."
# rescue JSON::ParserError
#   puts "Error parsing json data."
# ensure
#   file.close if file
# end

# #edited
# begin
#   file = File.open("library.json", "r")
#   books = JSON.parse(file.read, symbolize_book: true)
#   puts "Books Available in the Library:"
# rescue Errno::ENOENT
#   puts "File not found."
# rescue JSON::ParserError
#   puts "Error parsing json data."
# ensure
#   file.close if file
# end
# #use when we want to "borrow/remove" and "return/add"
# # add functions to the class/ perhaps create a menu

# def save_contacts(people)
#   begin
#     file = File.open("contacts.json", "w")
#     file.write(JSON.pretty_generate(people))
#     puts "Contacts saved."
#   rescue IOError => e
#     puts "An error occurred while saving contacts: #{e.message}"
#   ensure
#     file.close if file
#   end
# end

# #from slack

# require 'json'

# class Library
#   def initialize(file_name = "library.json")
#     @file_name = file_name
#     load_database  # Load existing data if available
#   end

#   def add_book(book)
#     @books << book
#     puts "#{book} has been added to the library."
#     update_database
#   end

#   def borrow_book(book)
#     if @books.include?(book)
#       @books.delete(book)
#       puts "You've borrowed '#{book}'."
#       update_database
#     else
#       puts "Sorry, '#{book}' is not available."
#     end
#   end

#   def return_book(book)
#     @books << book
#     puts "You've returned '#{book}'."
#     update_database
#   end

#   private

#   # Load the list of books from a JSON file (if it exists)
#   def load_database
#     if File.exist?(@file_name)
#       file_contents = File.read(@file_name)
#       @books = JSON.parse(file_contents)
#     else
#       @books = []
#     end
#   end

#   # Write the current list of books to the JSON file
#   def update_database
#     File.open(@file_name, 'w') do |file|
#       # Using 'pretty_generate' for readability
#       file.write(JSON.pretty_generate(@books))
#     end
#   end
# end

# # --- Usage Example ---

# library = Library.new

# library.add_book("1984")
# library.add_book("Brave New World")
# library.borrow_book("1984")
# library.return_book("1984")


#composition - when  theres a class thats composed of one or more objects from another class (cant have a functioning car without an engine and wheels)

# class Engine
#  def start
#   puts "Engine is starting"
#  end
# end

# class Wheels
#   def roll
#     puts "Wheels are rolling"
#   end
# end

# class Car
#   def initialize
#     @engine = Engine.new
#     @wheels = Wheels.new
#   end

#   def drive
#     @engine.start
#     @wheels.roll
#     return "Car is moving"
#   end
# end

# # engine = Engine.new
# # engine.start

# # wheels = Wheels.new
# # wheels.roll

# #when you create the car object in the car class you no longer need to create the engine and wheels objects bc it does that in the car class when we call the drive function

# car = Car.new
# puts car.drive


# class Battery
#   def charge
#     puts "Battery is charging ..."
#   end
# end

# class Storage
#   def read_data
#     puts "Reading data from storage ..."
#   end
# end

# class Laptop
#   def initialize
#     @battery = Battery.new
#     @storage = Storage.new
#     power_on
#     load_files
#   end

# private
#   def power_on
#     @battery.charge
#     puts "Laptop powering on ..."
#   end

#   def load_files
#     @storage.read_data
#     puts "Files loaded into memory."
#   end
# end

# laptop = Laptop.new
# # by calling the power_on and load_files in the initialize, no need to call it after creating the object. It will automatically do so when creating the object. those functions moved to private

# laptop.power_on
# laptop.load_files

#agregation - weaker relationship to class than the composition (can have a team without a player)

# class Player
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def display
#     puts "Player: #{@name}"
#   end
# end

# class Team
#   def initialize(name)
#     @name = name
#     @players = []
#   end

#   def add_player(player)
#     @players << player
#     puts "#{player.name} has joined #{@name}."
#   end

#   def show_team
#     puts "Team: #{@name}"
#     @players.each { |player| player.display }
#   end
# end

# player1 = Player.new("Alanna")
# player2 = Player.new("Charles")
# player3 = Player.new("Damon")
# # player1.display

# team = Team.new("Ruby Rockets")

# team.add_player(player1)
# team.add_player(player2)
# team.add_player(player3)
# team.show_team


# class CPU
#   def process
#     puts "Processing program data ..."
#   end
# end

# class Memory
#   def remember
#     puts "Moving data to storage ..."
#   end
# end

# class Storage
#   def read_data
#     puts "Reading data from storage ..."
#   end
# end

# class Computer
#   def initialize
#     @cpu = CPU.new
#     @memory = Memory.new
#     @storage = Storage.new
#     start_computer
#   end

#   private 

#   def start_computer
#     @cpu.process
#     @memory.remember
#     @storage.read_data
#     puts "Starting computer ..."
#   end
# end

# cpu = CPU.new
# cpu.process

# memory = Memory.new
# memory.remember

# storage = Storage.new
# storage.read_data

# computer = Computer.new
# computer.start_computer

#theres not only private but also protected!

# Access Control Methods:
# public: Methods are accessible from outside the class
# private: Methods are only accessible within the class
# protected: Methods are accessible within the class and its subclasses.

# can also use private_class_method :new
#given there is a class Logger,...(below)
# logger = Logger.new would cancel out 
# its for making specific methods private

#Design patterns
# Creational (e.g. Singleton, Factory)

# Singleton Pattern: 
# Ensures a class has only one instance.
# Provides a global point of access to that instance
# this is where we would use the private_class_method :new// must be placed after the original @@instance = Logger.new so it doesnt break bc then you could never create an instance.


