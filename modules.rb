#modules - like folders in a computer to organize

#namespacing
#prevent name collisions by organizing code into separate spaces

#mixins
#adds shared functionality to classes ithout using inheritance

# module MathConstants
#   PI = 3.14159
#   E  = 2.71828
# end

# puts MathConstants:: PI

# module PDFTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} as a PDF."
#     end
#   end
# end

# module NetworkTools
#   class Printer
#     def print_file(file)
#       puts "Printing #{file} over the network."
#     end
#   end
# end

# pdf_printer = PDFTools::Printer.new
# network_printer = NetworkTools::Printer.new

# pdf_printer.print_file("document.txt")
# network_printer.print_file("document.txt")


#can add both these in an Animals Module! it's just like another folder, and should change the class to Animal so it's not the same name. just have to do mammal = Animals::Mammals::Animals.new("dog") 
# module Mammals 
#   class Animals
#     attr_accessor :name

#     def initialize(name)
#       @name = name
#     end

#     def speak(noise)
#       puts "The #{@name} goes '#{noise}!'"
#     end
#   end
# end

# module Birds
#   class Animals
#     attr_accessor :name

#     def initialize(name)
#       @name = name
#     end

#     def speak(noise)
#       puts "The #{@name} goes '#{noise}!'"
#     end
#   end
# end

# mammal = Mammals::Animals.new("dog")
# mammal.speak("Bark")

# bird = Birds::Animals.new("parrot")
# bird.speak("Hey there")

# puts bird.name #available bc of the attr_accessor
# puts mammal.name


# module Greetable
#   def greet
#     "Hello"
#   end
# end

# class Person
#   include Greetable #this makes the logic in Greetable available to any Person class
# end

# person = Person.new
# puts person.greet 


# module Loggable
#   def log(message)
#     puts "Log: #{Time.now} - #{message}"
#   end
# end

# class Person
#   include Loggable #can only include from one

#   def initialize(name)
#     @name = name
#     log("New Person created with name - #{@name}")
#   end
# end

# #bc the Person class has the include Loggable, and the Student class is inherited from the Person class, it also has access to the Loggable module! same goes for any class that is within the same inheritance chain. (Ex. a new class Homework < Student created. Homework class has access to all the things in the Person class as well as the Loggable module)

# class Student < Person 
#   def initialize(name)
#     super(name)
#     log("TESTING in the Student class")
#   end
# end

# person = Person.new("Jess")
# student = Student.new("Leon") #when ran, it printed time - with the message from the Person class and then another time with the new message in the Student class

# module Drivable
#   def drive
#    puts "Driving the #{self.class}!"
#   end
# end

# class Car
#   include Drivable
# end

# class Motorcycle
#   include Drivable
# end

# car = Car.new
# motorcycle = Motorcycle.new

# car.drive
# motorcycle.drive

# module Walkable
#   def walk(message)
#     puts "On a walk with #{message}"
#   end
# end

# class Person
#   include Walkable
# end

# class Dog
#   include Walkable
# end

# person = Person.new
# person.walk("Snoop Dog")
# dog = Dog.new
# dog.walk("Dog")


# module MathOperations
#   def add(a, b)
#     puts "The sum is #{a + b}."
#   end

#   def subtract(a, b)
#     puts "The difference is #{a - b}."
#   end

#   def multiply(a, b)
#     puts "The product is #{a * b}."
#   end

#   def divide(a, b)
#     puts "The quotient is #{a / b}."
#   end
# end

# class Calculator
#   include MathOperations
# end

# result = Calculator.new
# result.add(2, 3)
# result.subtract(10, 5)
# result.multiply(5, 5)
# result.divide(20, 2)


# module MathOperations
#   def add(a, b)
#     puts "The sum is #{a + b}."
#   end

#   def subtract(a, b)
#     puts "The difference is #{a - b}."
#   end

#   def multiply(a, b)
#     puts "The product is #{a * b}."
#   end

#   def divide(a, b)
#     puts "The quotient is #{a / b}."
#   end
# end

# class Calculator
#   include MathOperations

#   def initialize(a,b)
#     @a = a
#     @b = b
#     add(a,b)
#     subtract(a,b)
#     multiply(a,b)
#     divide(a,b)
#   end
# end

# result = Calculator.new(10, 2)


# How to call a module method directly:
# module MathOperations
#   def self.add(a, b)
#     a + b
#   end
# end

# puts MathOperations.add(1, 2)  # => 3

# # OR 

# module MathOperations
#   # `module_function` makes the following instance methods available
#   # as *module methods* (so you can call MathOperations.add).
#   module_function 

#   def add(a, b)
#     a + b
#   end
# end

# # Now you can call:
# puts MathOperations.add(1, 2)  # => 3

#use inheritance for an is-a relationship
#use mixins for shared behavior// bird and plane both fly but they are completely different

#Refactor- have code that works and update it to work in a different way

module Introduction
  def introduce
    "Hello, my name is #{@name}"
  end

  def intro_age
    "I am #{@age} years old"
  end
end

class Person
  include Introduction

  attr_accessor :name, :age

  def initialize(name, age)
    raise ArgumentError, 'Age must be a positive number' if age < 0
    @name = name
    @age = age
  end

  # def introduce
  #   "Hi, my name is #{@name} and I am #{@age} years old."
  # end
end

class Student < Person
  def initialize(name, age, grade, school)
    super(name, age)
    @grade = grade
    @school = school
  end

  # def introduce
  #   super + " I'm in grade #{@grade} and I go to #{@school}."
  # end
end

class Teacher < Person
  def initialize(name, age, subject, years_of_experience)
    super(name, age)
    @subject = subject
    @years_of_experience = years_of_experience
  end

  # def introduce
  #   "#{super} I teach #{@subject}. And I've been teaching for #{@years_of_experience} years."
  # end
end

# person = Person.new("Jess", -1)
# puts person.name
# puts person.age

# Instantiate - created an instance of something (Ex. student = Student.new("Leon", 25, "12", "FD")

# student = Student.new("Leon", 25, "12", "FD")
# # puts student.introduce
# puts student.intro_age

# teacher = Teacher.new("Charles", 26, "Computer Science", 50)
# # puts teacher.introduce
# puts teacher.intro_age