# class Person
#   #attr_accessor :name, :age
#   def initialize(name,age)
#     @name = name
#     @age = age
#   end

#   def intro
#     "Hi my name is #{@name} and I'm #{@age} years old." #if you add the attr_accessor, you can interpolate name and age without the tags.
#   end
# end

# # person = Person.new("Alanna", 23)
# # puts person.intro
# #puts person.name #only works with attr_accessor

# class Book
#   attr_accessor :title, :author, :pages

#   def initialize(title, author, pages)
#     @title = title
#     @author = author
#     @pages = pages
#   end

#   def book_info
#     return "Book: #{title} written by #{author}, contains: #{pages} pages" #must have the return and not puts when testing with Rspec!!
#   end

#   def bookmark(page_number)
#     return "Currently on page: #{page_number}"
#   end
# end

# book = Book.new("The Female", "Invi Wright", 382)
# # puts book.title
# puts book.book_info
# puts book.bookmark(106)


# class Rectangle
#   attr_accessor :length, :width

#   def initialize(length,width)
#     @length = length
#     @width = width
#   end

#   def area
#     return length * width
#   end

#   def perimeter
#     return 2 * (length + width)
#   end
# end
# shape = Rectangle.new(5, 3)
# puts shape.length
# puts shape.width
# puts shape.area
# puts shape.perimeter