# require_relative '../modules'

# RSpec.describe Introduction do
#   class Person
#     include Introduction

#     def initialize(name, age)
#       @name = name
#       @age = age
#     end
#   end

#   subject { Person.new("Leon", 47) }

#   describe '#introduce' do
#     it 'return the correct introduction message' do
#       expect(subject.introduce).to eq("Hello, my name is Leon")
#     end
#   end

#   # subject { Person.new(47) }

#   describe '#intro_age' do
#     it 'return the correct age intro message' do
#       expect(subject.intro_age). to eq("I am 47 years old")
#     end
#   end
# end