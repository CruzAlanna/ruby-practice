# Mocking: 
# Simulating the behavior of real objects in controlled ways.
# Useful for isolating the code under test.
# Stubbing:
# Providing predefined responses to method calls during a test.
# Helps test methods that depend on external services or complex logic.

# class Student
#   attr_accessor :name, :grades

#   def initialize(name)
#     @name = name
#     @grades = []
#   end

#   def average_grade
#     return 0 if grades.empty?
#     total = grades.reduce(:+) #reduces by adding all index together
#     return total / grades.size #same as .length or .count
#   end
# end


# student = Student.new("Alanna")
# puts student.name
# student.grades = [100, 90, 80]
# p student.grades
# p student.average_grade

#API- application programming interface, lets software talk to eachother in a structured way.

# class Library
#   def fetch_books_from_api
#     # Simulate a call to an external API
#     sleep(2) # Simulates network delay
#     return ["Book 1", "Book 2", "Book 3"]
#   end

#   def books
#     @books ||= fetch_books_from_api
#   end

#   # def books
#   #   if @books.nil?
#   #     @books = fetch_books_from_api
#   #   end
#   #   @books
#   # end  
# end

# library = Library.new
# # puts library.fetch_books_from_api
# puts library.books
