#For loops

x = gets.chomp.to_i

for i in 1..x do
  puts x - i
end

puts "Done"

y = [1, 2 ,3, 4, 5]
#reverse to count down otherwise would have counted up
for i in y.reverse do
  puts i
end
