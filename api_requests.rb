require 'net/http'
require 'json'

# url = URI("https://jsonplaceholder.typicode.com/posts/1") 
# response = Net::HTTP.get(url) # 1) Send request, 2) Get response
# data = JSON.parse(response) # 3) Parse the JSON
# # puts data
# pp data #prints the data nicer// pp = "pretty print"

# #Why would we make HTTP requests?// we can access other data that is already available instead of making it ourselves. make things go faster.

# #this code is an example of an API of an HTTP request


# url = URI("https://cat-fact.herokuapp.com/facts") 
# response = Net::HTTP.get(url) 
# data = JSON.parse(response) 
# # pp "Fact: #{data[3]["text"]}"
# puts "Fun Cat Facts:"
# data.each_with_index do |index, i|
#   puts "#{i + 1}. #{index["text"]} \n"
# end

url = URI("https://pokeapi.co/api/v2/pokemon/1") 
response = Net::HTTP.get(url) 
data = JSON.parse(response) 
puts "Pokemon Name: #{data["forms"][0]["name"]}"