i = 0
loop do
  i += 2 #increment 2 by 2
  if i == 4
    next #skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break #this will cause execution to exit the loop
  end
end

x = 42
loop do
  puts x # print 42 -- x is in scope inside the block
  x = 2 #We can change the value of x
  break
end
puts x # 2 -- the value was changed
