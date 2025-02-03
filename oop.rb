#OOP = Object Oriented Programming
#encapsulation: bundle data and methods that operate on that data within one class
#abstraction: only show whats necessary, hide the complex implementations/ details. Real life example - car steering wheel. can see the wheel but theres a lot more going on underneath

#class
# name = "Alanna"
# puts name.class #class = string
# number = 3
# puts number.class #class = integer


# class Car #always use a capital for the class that you are making.
#   #methods and logic
# end

# my_car = Car.new
# puts my_car.class

# class Person
#   def set_name(name) #this set_name sets the name as @name
#     @name = name #instance variable always start with an @
#   end

#   def get_name
#     @name
#   end

#   def set_age(age)
#     @age = age
#   end

#   def get_age
#     @age
#   end
# end

# person1 = Person.new
# # puts person1.class
# person1.set_name("JimBob")
# person1.set_age(47)
# puts "Howdy, I'm #{person1.get_name} and I'm #{person1.get_age} years old!"

# person2 = Person.new
# # puts person2.class
# person2.set_name("Ruby")
# person2.set_age(12)
# puts "Hey, I'm #{person2.get_name} and I'm #{person2.get_age}."

#Initialize Method- condenses the setter and getter part of the class.
# class Person
#   def initialize(name, age) 
#     @name = name 
#     @age = age
#   end

#   def get_name
#     @name
#   end

#   def get_age
#     @age
#   end
# end

# person3 = Person.new("Alonzo", 27)
# puts person3.get_name
# puts person3.get_age

# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name 
#     @age = age
#   end
# end

# person = Person.new("Alanna", 23) #make sure there's no space in between the parenthesis
# puts person.name
# puts person.age

#attr_ 
# attr_reader :name creates a getter method for @name
# attr_writer :name creates a setter method for @name
# attr_accessor :name creates both getter and setter methods for @name

class Animal
  attr_accessor :species, :name, :gender, :age, :ate

  def initialize(species, name, gender, age)
    @species = species
    @name = name
    @gender = gender
    @age = age
    @ate = 0
  end
   
  def ate(feedings)
    @ate += feedings
    puts "#{name} gets #{feedings} feeding(s) daily."
  end
end

# puts "Pet Store Logs"
# puts "-------------------"
# animal1 = Animal.new("Husky", "Rosie","She", 2)
# puts "#{animal1.species}: #{animal1.name} \n#{animal1.gender} is #{animal1.age} year(s) old."
# puts animal1.ate(2)

# animal2 = Animal.new("Guppy", "Gordo","He", 1)
# puts "#{animal2.species}: #{animal2.name} \n#{animal2.gender} is #{animal2.age} year(s) old."
# puts animal2.ate(1)


animals = []

loop do
  puts "\nPet Store Log"
  puts "1. New Arrival Input"
  puts "2. View All Animals"
  puts "3. List of Feedings"
  puts "4. Exit"
  print "Enter your choice: "
  choice = gets.chomp

  case choice
  when "1"
    print "Enter the species of animal."
    species = gets.chomp.capitalize
    print "Enter the animal's name."
    name = gets.chomp.capitalize
    print "Enter the animal's gender (He/She)."
    gender = gets.chomp.capitalize
    print "Enter the animal's age."
    age = gets.chomp.to_i
    animals << Animal.new(species, name, gender, age)
    puts "New Animal added!"
  when "2"
    puts "\n Pet Store Log: Currently consists of #{animals.length} entry/entries"
    puts "------------------------------------------------------------------"
    animals.each_with_index do |animal, index|
      puts "#{index + 1}. #{animal.species}: #{animal.name} \n#{animal.gender} is #{animal.age} year(s) old."
      puts "----------------------------"
    end
  when "3"
    if animals.empty?
      puts "No animals in the shop log. If any new arrivals, add to the log first."
    else
      puts "\nSelect an animal to input the number of feedings:"
      animals.each_with_index do |animal, index|
        puts "#{index + 1}. #{animal.name}"
      end
      print "Select the animal by entering the index number:"
      animal_number = gets.chomp.to_i
      if animal_number.between?(1, animals.length)
        print "How many feedings does this animal get daily?"
        feedings = gets.chomp.to_i
        animals[animal_number - 1].ate(feedings)
      else
        puts "Invalid index number."
      end
    end
  when "4"
    puts "Pet Store Log Closed"
    break
  else
    puts "Invalid choice. Please try again."
  end
end
