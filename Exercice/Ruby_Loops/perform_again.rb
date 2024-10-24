# loop do
#   puts "Do you want to do that again?"
#   answer = gets.chomp
#   if answer != "Y"
#     break
#   end
# end

#Redid the do/while loop in unless to make it more clear and readable
# puts "Do you want to do that again ?"
# until gets.chomp == "Y"
#   puts "Do you want to do that again ?"
# end

#Same as above but with while instead un until or do/while but the best one is until for this condition break
puts "Do you want to do that again ? "
while gets.chomp != "Y"
  puts "Do you want to do that again ?"
end

#Another construct that support "do/while" loops but not recommended by the creator of Ruby
#It work but should not be used there are better option
begin
  puts "Do you want to do that again ?"
  answer = gets.chomp
end while answer == "Y"
