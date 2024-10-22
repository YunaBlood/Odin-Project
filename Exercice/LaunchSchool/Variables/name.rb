puts "What is your name"
name = gets.chomp
puts "Greetings " + name + " !"


puts name*10

#Best method because the first method show the value inline
#Method 2 
10.times do
  puts name
end

puts "What is your first name ?"
first_name = gets.chomp
puts"What is your last name?"
last_name = gets.chomp
puts "Your full name is" + first_name + " " + last_name