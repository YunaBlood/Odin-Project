#LaunchSchool Exercises :
#What does the each method in the following program return after it is finished executing?

# x = [1, 2, 3, 4, 5]
# x.each do |a|
#   a
# end

# #=> Result will be 2 3 4 5 6
# #Show nothing in the console need to add a print or puts

# #Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

# x = ""
# while x != "STOP"
#   puts "Greeting how are you ?"
#   answer = gets.chomp
#   puts "Are you sure you are well ? "
#   x = gets.chomp
# end


#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

i = 0
#Try re-writing the above examples using alternative loop methods to achieve the same results.
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Original loop infinite
# loop do
#   puts "i is #{i}"
#   i += 1
#   break if i == 10
# end
#Rewriten with upto
# 0.upto(9) {|i| puts "i is #{i}"}
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#and until the condition is true
#BEST ONE for this condition
# until i == 10
#   puts "i is #{i}"
#   i += 1
# end

#rewriten with while until condition is false
# while i != 10
#   puts "i is #{i}"
#   i += 1
# end

#rewriten with for
# for i in 0..9
#   puts "i is #{i}"
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Original while loop
# while i < 10 do
#   puts "i is #{i}"
#   i += 1
# end

# puts "Are we there yet ?"
# while gets.chomp != "yes" do
#   puts "Are we there yet?"
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rewriten with until
# until i >= 10 do
#   puts "i is #{i}"
#   i += 1
# end
#Rewriten with upto
# 0.upto(9) {|i| puts "i is #{i}"}

#Rewriten
# puts "Are we there yet ?"
# until gets.chomp == "yes" do
#   puts "Are we there yet ?"
# end

#Rewrite with one more input of the user and with infinite loop
# x = ""
# loop do
#   puts "Are we there yet ?"
#   ans = gets.chomp
#   puts "You sure ?"
#   x = gets.chomp
#   break if x == "yes"
# end

#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Original until loop
# until i >= 10 do
#   puts "i is #{i}"
#   i += 1
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rewrite
# while i < 10 do
#   puts "i is #{i}"
#   i += 1
# end
# #Original
# until gets.chomp == "yes" do
#   puts "Do you like Pizza?"
# end

#Rewrite
# like_pizza = ""

# while like_pizza != "yes" do
#   puts "Do you like pizza"
#   ans = gets.chomp
#   puts "you sure ?"
#   like_pizza = gets.chomp
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Original for loop
# for i in 0..5
#   puts "#{i} zombies incoming!"
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#Rewrite
# until i >= 6 do
#   puts "#{i} zombies incoming"
#   i += 1
# end

# while i <= 5 do
#   puts "#{i} zombies incoming"
#   i += 1
# end

# 0.upto(5) {|i| puts "#{i} zombies incoming " }

# for i in 0..5
#   puts "#{i} zombies incoming"
# end

# 6.times {|num| puts "#{num} zombies incoming"}
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Original times loop
# 5.times do
#   puts "Hello, world!"
# end

# 5.times do |number|
#   puts "Alternative fact number #{number}"
# end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rewrite
# 1.upto(5) {|i| puts "Hello, world!"}

# for i in 1..5
#   puts "Hello, world!"
# end

# loop do
#   puts "Hello, world!"
#   i += 1
#   break if i == 5
# end

# while i <= 4 do
#   puts "Hello, world!"
#   i += 1
# end

# until i >= 5 do
#   puts "Hello, world!"
#   i += 1
# end

# 0.upto(4) {|number| puts "Alternative fact number #{number}"}

# for number in 0..4
#   puts "Alternative fact number #{number}"
# end

number = 0

# loop do
#   puts "Alternative fact number #{number}"
#   number += 1
#   break if number == 5
# end

# while number <= 4 do
#   puts "Alternative fact number #{number}"
#   number += 1
# end

until number >= 5 do
  puts "Alternative fact number #{number}"
  number += 1
end
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

#UPTO and DOWNTO loop
#Original
# 5.upto(10) { |num| print "#{num} " }     #=> 5 6 7 8 9 10

10.downto(5) { |num| print "#{num} " }   #=> 10 9 8 7 6 5
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------
#Rewrite
num = 5
num2 = 10
# 6.times do
#   print "#{num} "
#   num += 1
# end

# for num2 in 10..5
#   print "#{num2}"
#   num2 -= 1
# end

# while num < 11 do
#   print "#{num} "
#   num += 1
# end

# until num > 10 do
#   print "#{num} "
#   num += 1
# end

loop do
  print "#{num} "
  num += 1
  break if num == 11
end
