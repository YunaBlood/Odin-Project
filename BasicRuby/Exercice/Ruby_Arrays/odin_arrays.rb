#Two basic array
num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]
#=======================================================
#Create new array with initial size and default value
Array.new                 #=> []
Array.new(3)              #=> [nil, nil, nil]
Array.new(3,7)            #=> [7, 7, 7]
Array.new(3, true)        #=> [true, true, true]
#=======================================================
#Acess array elements
str_array[0]              #=> "This"
str_array[1]              #=> "is"
str_array[4]              #=> "array"
str_array[-1]             #=> "array"
str_array[-2]             #=> "small"
str_array[3]              #=> "small"
str_array[-3]             #=> "a"
str_array[2]              #=> "a"
str_array[9]              #=> nil
puts str_array.first      #=> "This"
puts str_array.first(2)   #=> ["This", "is"]
puts str_array.last(2)    #=> ["small", "array"]
#=======================================================
#Adding and removing elements
num_array = [1, 2]
#Add or remove elements at the end of the array
#With push add element at the end of the array
# "<<" Shovel operator do the same thing as push
# pop will remove the element at the end of the array
# and all of those will return the elements that were added or removed
num_array.push(3, 4)      #=> [1, 2, 3 ,4]
num_array << 5            #=> [1, 2, 3 ,4, 5]
num_array.pop             #=> 5
num_array                 #=> [1, 2, 3 ,4]

#Add or remove elements at the beginning of the array
#Same as pop and push but inversed
num_array = [2,3,4]
#add 1 at the beginning of the array
num_array.unshift(1)      #=> [1,2,3,4]
#remove the first elements of the array so the 1 we just added
num_array.shift           #=> 1
num_array                 #=>[2,3,4]

#pop and shift can take integer arguments:

num_array = [1, 2, 3, 4, 5, 6]

num_array.pop(3)          #=> [4, 5, 6]
num_array.shift(2)        #=> [1, 2]
num_array                 #=> [3]
#=======================================================
#Adding and subtracting arrays
a = [1,2,3]
b = [3,4,5]
#Concat array by adding them
#Or with concat and passing the array as a parameters
a + b                     #=> [1, 2, 3, 3, 4, 5]
a.concat(b)               #=> [1, 2, 3, 3, 4, 5]
#Subtract both array to find the difference between them
#Will return a copy of the first array and remove any elements that appear in the second array
puts a - b
#========================================================
#Basic methods
num_array.methods         #=> A very long list of methods

[].empty?                 #=> true
[[]].empty?               #=> false
[1, 2].empty?             #=> false


[1,2,3].length             #=> 3

[1,2,3].reverse            #=> [3,2,1]

[1,2,3].include?(3)        #=> true
[1,2,3].include?("3")      #=> false

[1, 2, 3].join             #=> "123"
[1, 2, 3].join("-")        #=> "1-2-3"
