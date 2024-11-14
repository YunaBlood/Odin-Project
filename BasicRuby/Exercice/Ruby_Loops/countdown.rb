#While loop is not implemented as a method
#which means the entire body of the loop is in the same scope as the code that contains the while loop
x = gets.chomp.to_i

#countdown
while x >= 0
  puts x
  x -= 1
end

puts "Done"

x = 0
while x < 5
  y = x * x
  x +=1
end

puts y #still in the scope even if initialize in the loop
