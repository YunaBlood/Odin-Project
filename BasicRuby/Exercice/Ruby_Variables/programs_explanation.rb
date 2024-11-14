#Look at the following programs...
#What does x print to the screen in each case? Do they both give errors? Are the errors different? Why?


x = 0
3.times do
  x += 1
end
puts x
# x is a outside scope variable so it can be changed and called inside a block scope
# x = 3 because it iterate 3 times on x +=1 so it does x = x + 1 because x is 0 at first it become 1 then x = x + 1 = 2 and then x = x + 1 become 3 which end at this value because the times is only 3

y = 0
3.times do
  y += 1
  x = y
end
puts x
#y = 0 but you redo the same as above you called it 3 times so it become y = 3 but because you declare x in the block scope and tell it to take the value of y so x = 3 but if you want to show it outisde of the block scope it will return a error of variable undefined or method