#Major point to remember return is not required to return something from a method
#This is a feature of Ruby
def add_three(number)
  return number + 3
  number 4
end

returned_value = add_three(4)
puts returned_value

def just_assignment(number)
  foo = number + 3
end

p just_assignment(2)

#Chaining methods

#Gain the ability to write expressive and succint code

def add_three(n)
  new_value =  n + 3
  puts new_value
  new_value
end

add_three(5)
# 8 # This is the ouput
# => nil #This is the return value!


# add_three(5).times {puts "will this work"} #NO it will not work because we only print the value not return it
# puts only return nil !

# add_tree(5).times {puts 'this should print 8 times'} #Return 8 because 5 become the value of n which does 5 + 3
#Since add_three return a value we can call methods on the returned value.
#Print out the number of times of the value

# "hi there".length.to_s #return "8" - a string
