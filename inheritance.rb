# class Vehicle
#   def initialize(make, model)
#     @make = make
#     @model = model
#   end

#   def info
#     "Vehicle Make: #{@make}, Model: #{@model}"
#   end
# end

# vehicle = Vehicle.new("Toyota", "Tundra")
# puts vehicle.info

# class Motorcycle < Vehicle #that less than sign is "inherit"; Motorcycle is inherited from Vehicle class. everything in motorcycle will have access to info in vehicle.
#   def number_of_wheels
#     2
#   end
# end

# class Car < Vehicle 
#   def number_of_wheels
#     4
#   end
# end

# car = Car.new("Toyota", "Tundra")
# motorcycle = Motorcycle.new("Harley", "Sportster")
# #however, car and motorcyle class, dont have access to eachother's info 

# puts car.info
# puts "Car Wheels: #{car.number_of_wheels}"

# puts motorcycle.info
# puts "Motorcycle Wheels: #{motorcycle.number_of_wheels}"

# class Person
#   attr_accessor :name, :age

#   def initialize(name, age)
#     @name = name
#     @age = age
#   end

#   def info
#     puts "Name: #{@name}, Age: #{@age}"
#   end
# end


# class Teacher < Person
#   def subject
#     "Social Studies"
#   end
# end

# person1 = Teacher.new("Jessie", 34)
# # puts person1.class
# # puts person1.info
# puts "#{person1.name} is #{person1.age} years old and teaches #{person1.subject}."

# class Student < Person
#   def grade
#     "12th"
#   end
# end

# person2 = Student.new("Tod", 17)
# # puts person2.class
# # puts person2.info
# puts "#{person2.name} is #{person2.age} years old and is in #{person2.grade} grade."


#super- adds to previous method. using (super + "whatever you want to add to the method")
# class Person
#   attr_accessor :name, :age

#   def initialize(name, age) #name and age are called "attributes, parameters, arguments" there are many names.
#     @name = name
#     @age = age
#   end

#   def introduce
#     puts "Hi my name is #{@name} and I am #{@age} years old."
#   end
# end

# class Teacher < Person
#   attr_accessor :name, :age, :subject, :years_of_experience #not necessary in this case, but if needed sometime later, why not

#   def initialize(name, age, subject, years_of_experience)
#     super(name, age)
#     @subject = subject
#     @years_of_experience = years_of_experience
#   end

#   def introduce
#     # puts "#{super}I've been teaching #{@subject} for #{@years_of_experience} years." #the puts is optional really
#     #"I am a teacher"#this will rewrite instead of adding
#   end
# end

# person1 = Teacher.new("Jessie", 34, "Social Studies", 4)
# puts person1.introduce


# class Student < Person
#   attr_accessor :name, :age, :grade, :school

#   def initialize(name, age, grade, school)
#     super(name, age)
#     @grade = grade
#     @school = school
#   end

#   def introduce
#     "#{super}I am in #{@grade} grade and go to #{@school}."
#   end
# end

# # person2 = Person.new("Tod", 17)
# # puts person2.introduce
# person2 = Student.new("Tod", 17, "12th", "Bedford High School")
# puts person2.introduce


# class Animal #superclass
#   attr_accessor :name, :age, :species, :coat_type
#   def initialize(name, age, species, coat_type)
#     @name = name
#     @age = age
#     @species = species
#     @coat_type = coat_type
#   end
#   def feed
#     puts "#{@name} primary diet:"
#   end
#   def introduction
#     puts "Animal Info"
#     puts "1)Name: #{@name}"
#     puts "2)Age: #{@age}"
#     puts "3)Species: #{@species}"
#     puts "4)Coat Type: #{@coat_type}"
#   end
# end

# class Mammal < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :milk
#   def initialize(name, age, species, coat_type, milk)
#     super(name, age, species, coat_type)
#     @milk = milk
#   end
#   def introduction
#     super
#     puts "Did you know: #{@milk}"
#   end
#   def feed
#     super
#     puts "Variety Herbivore"
#   end
# end

# class Bird < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :feathers
#   def initialize(name, age, species, coat_type, feathers)
#     super(name, age, species, coat_type)
#     @feathers = feathers
#   end
#   def introduction
#     super
#     puts "Did you know: #{@feathers}"
#   end
#   def feed
#     super
#     puts "Variety Omnivore"
#   end
# end

# class Reptile < Animal #sub
#   attr_accessor :name, :age, :species, :coat_type, :shed
#   def initialize(name, age, species, coat_type, shed)
#     super(name, age, species, coat_type)
#     @shed = shed
#   end
#   def introduction
#     super
#     puts "Did you know: #{@shed}"
#   end
#   def feed
#     super
#     puts "Carnivorous"
#   end
# end


# puts "------------------------------------------------------------------------------"
# mammal = Mammal.new("Kangaroo", 7, "Macropodidae", "Fur", "Mammals feed their young by producing milk.")
# puts mammal.class
# puts " \n"
# mammal.introduction
# mammal.feed
# puts "------------------------------------------------------------------------------"
# bird = Bird.new("Guam Rail", 2, "Gallirallus owstoni", "Feathers", "Birds are born with down feathers primarily to provide insulation and keep them warm.")
# puts bird.class
# puts " \n"
# bird.introduction
# bird.feed
# puts "------------------------------------------------------------------------------"
# reptile = Reptile.new("American Alligator", 10, "Alligator mississippiensis", "Scales", "Reptiles shed their skin, also called 'molting', primarily to accommodate their growing bodies as they age")
# puts reptile.class
# puts " \n"
# reptile.introduction
# reptile.feed
# puts "------------------------------------------------------------------------------"