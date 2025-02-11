# require_relative '../inheritance'
# #in the future, when you test something, it should go in its own file. (Ex. student class would be in its own student spec same goes with teacher.) This is the general rule of thumb
# RSpec.describe Person do
#   describe '#initialize' do
#     it 'create a new Person with a name and age' do
#       person = Person.new("Alanna", 23)
#       expect(person.name).to eq("Alanna")
#       expect(person.age).to eq(23)
#     end
#     it 'raises an error if age is negative' do
#       expect {Person.new("Jess", -1) }.to raise_error(ArgumentError, 'Age must be a positive number')
#     end
#   end
#   #below does not work :( figure it out later look at the calculator one for help
#   # describe '#introduce' do
#   #   it 'Use name and age to make introduction' do
#   #     expect {Person.new("Pam", 29) .introduce }.to eq("Hi my name is #{@name} and I am #{@age} years old.")
#   #   end
#   # end
# end

# #another syntax of it
# #this also doesnt work
# # RSpec.describe Person do
# #   let(:person) { Person.new("Noah", 25) }

# #   it "has a name" do
# #     expect(person.name).to eq("Noah")
# #   end

# #   it "has a age" do
# #     expect(person.age).to eq("25")
# #   end
# # end

# RSpec.describe Teacher do
#   describe '#initialize' do
#     it 'create a new Teacher with a name, age, subject, years_of_experience' do
#       teacher = Teacher.new("Alanna", 23, "Math", 3)
#       expect(teacher.name).to eq("Alanna")
#       expect(teacher.age).to eq(23)
#       expect(teacher.subject).to eq("Math")
#       expect(teacher.years_of_experience).to eq(3)
#     end
#   end
# end

# RSpec.describe Student do
#   describe '#initialize' do
#     it 'create a new Student with a name, age, grade, school' do
#       student = Student.new("Alanna", 23, "13th", "Code School of Guam")
#       expect(student.name).to eq("Alanna")
#       expect(student.age).to eq(23)
#       expect(student.grade).to eq("13th")
#       expect(student.school).to eq("Code School of Guam")
#     end
#   end
# end