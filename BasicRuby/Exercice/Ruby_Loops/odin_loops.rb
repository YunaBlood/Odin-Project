#Loop that will not stop without the break condition
#So in clear it's a infinite loop
#Will not be used much compared to other loop
#If you use this loop maybe you should look at the other loop and see if there is a better alternative for your problem
i = 0
#Infinite Loop (loop)
loop do
  puts "l is #{i}"
  i+= 1 #=> i = i + 1
  break if i == 20
end

#Same as above but more clear in the intention of the loop because we declare the condition that will break the loop at the start
#Easier to read than the infinite loop
#Also while can be used to ask a user a question in a undertermined ammount of loop like the second example which ask the user yes and continue the loop if not equal to "yes"
#While loop (run if condition is false and stop when the condition become true)
while i < 10 do
  puts "i is #{i}"
  i += 1
end

puts "Are we there yet ?"
while gets.chomp != "yes" do
  puts "Are we there yet ? "
end

#Until loops (run if condition false and stop when the condition is true)
until i >= 10 do
  puts "i is #{i}"
  i +=1
end

#Same as while but inversed while is looping as long as the condition is true
#Until loop as long as the condition is false
#Should avoid to use negation if possible to make the code more readable and easier to understand because having negation everywhere which inverse the meaning of the code can be hard to understand

#Same type of code than the while which ask a question until the condition become false
#For this one the condition need to became true to stop for as long that the condition is false the loop will continue

puts "Do you like Pizza ? "
until gets.chomp == "yes"
  puts "Do you like Pizza ? "
end

#Ranges (Know exactly how many times the loop need to run give the starting value and ending value and the type of range : inclusive or exclusive.)
(1..5)  # inclusive range: 1, 2, 3, 4, 5
(1...5) # exclusive range: 1, 2 ,3 ,4

#We can make ranges of letters, too !
("a".."d") # a, b, c, d

#For loop(used to iterate trought array or range or other type of collection)
#Useful if need to do something a given number of times using a iterator
for i in 0..5
  puts "#{i} zombies incoming!"
end

#Times loop(Need to run a loop a specified number of times and access the number it's currently iterating through)
5.times do
  puts "Hello, world!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end

#Upto and Downto loops(Need to step through a series of number or letters within a range than those loop are the best)

5.upto(10) {|num| print "#{num} " } #=> 5 6 7 8 9 10

10.downto(5) {|num| print "#{num} " } #=> 10 9 8 7 6 5
