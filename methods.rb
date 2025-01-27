#DRY - Don't Repeat Yourself, "Keep my code dry"

# names = ["Jess", "Noah", "Alanna"]

# def greet(array) #Parenthesis is called a parameter, importants to use bc the info inside the method is not available outside it and viceversa, parameters kind of open a window
# array.each do |name|
# p "Hi #{name.capitalize}"
# end

# greet(names)
#Important: make sure that the words match up! (In example, array in parameters match the array.each, as well with name, and names.)

# #Square method exercise
# puts "Please input a number and I'll square it."
# i = gets.chomp.to_i
# def square(i)
#   puts i * i #Typically, dont need to print out so we would put "return" instead (Don't need to wrtie return in ruby, itll do it automatically)
# end

# puts "Answer: "
# square(i)

# numbers = [1, 2, 3]
# def sum_array(array)
#   sum = 0
#   array.each do |num|
#   sum += num
#   end
#   return sum
# end

# p sum_array (numbers)

# numbers [1, 2, 3, 4, 5]

# def get_even_number(num)
#   even_numbers = []

#   nums.each do |n|
#     if n.even?
#       even_numbers.push(n)
#     end
#   end

#   return even_numbers
# end

# p get_even_number(numbers)

# words = ["cup", "hat", "pencil", "common"]

# def filter_words(vocab)
#   #short_words = []
#   long_words = []

#   vocab.each do |word|
#     #p word.length
#     if word.length <= 3
#       # short_words.push(word)
#     elsif word.length > 3
#       long_words.push(word)
#     end
#   end

#   # return short_words
#   return long_words
# end

# p filter_words(words)


# grades = [87, 93, 65, 20, 74] #expect B, A, D, F, C
# student1 = [92, 97, 89, 99, 100]

# def grade_students(score)
#   letter_grade = []

#   score.each do |grade|
#     if grade >= 90
#       letter_grade.push("A")
#     elsif grade < 90 && grade >= 80
#       letter_grade.push("B")
#     elsif grade < 80 && grade >= 69
#       letter_grade.push("C")
#     elsif grade < 70 && grade >= 59
#       letter_grade.push("D")
#     else
#       letter_grade.push("F")
#     end
#   end
#   return letter_grade
# end

# # p grade_students(grades)
# p grade_students(student1)