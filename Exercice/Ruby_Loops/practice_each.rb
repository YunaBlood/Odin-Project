#Prefered way by ruby developer to loop a collection of elements
#Iterators
names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
x = 1
#Loop each elements in our array in order
#Assign the value to a variable named name between the pipes |
#print the value of this variable to the screen
names.each { |name| puts name }

#Added a counter to add a number before each name
#Creating a numbering list output
#Every time we iterate we increment x by 1
names.each do |name|
  puts "#{x}) #{name}"
  x += 1
end

