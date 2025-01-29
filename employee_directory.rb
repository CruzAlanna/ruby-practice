employee_directory = [
  { name: "Alice", 
    position: "clerk" , 
    skills: ["customer service", "money handling"], 
    contact_info: {email: "alice@mail.com", phone: "123-456-789"}
  },
  { name: "Bob", 
    position: "stocker" , 
    skills: ["organizing", "time-management"], 
    contact_info: {email: "bob@mail.com", phone: "923-456-781"}
  },
  { name: "Carol", 
    position: "store manager", 
    skills: ["management", "detail-oriented"], 
    contact_info: {email: "carol@mail.com", phone: "223-456-788"}
  },
]

employee_directory.each do |employee|
  puts " \nName: #{employee[:name].capitalize}"
  puts " \nPosition: #{employee[:position].capitalize}"
  puts " \nSkills:"
  employee[:skills].each do |skill|
    puts "#{skill.capitalize}"
  end 
  puts " \nContact Information"
  employee[:contact_info].each do |via, info|
    puts "#{via.capitalize}: #{info}"
  end
  puts "---------------------"
end

