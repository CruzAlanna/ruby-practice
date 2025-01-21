# is_raining = false
# is_walking = true #if true then the user is walking, if false the user is driving

# if is_raining == false && is_walking == true
#   puts "Bring umbrella"
# elsif is_raining == true && is_walking == false
#   puts "You're in the car, so you don't need an umbrella"
# end

weather = "sunny" # sunny, rainy, cloudy
day_of_week = "Saturday" # any day of the week
time_of_day = 15 #24 hour format

if (day_of_week == "Saturday" || "Sunday") && weather == "sunny" #check shortening of the conditionals! nonrepetitive
  if time_of_day < 12
    puts "It's a sunny weekend morning."
  elsif time_of_day >= 12 && time_of_day < 18
    puts "It's a sunny weekend afternoon."
  else

  end
elsif (day_of_week == "Saturday" || day_of_week == "Sunday") && weather == "rainy"

elsif (day_of_week == "Saturday" || day_of_week == "Sunday") && weather == "cloudy"

else

end

#INCOMPLETE:Continue this later (clean it up)