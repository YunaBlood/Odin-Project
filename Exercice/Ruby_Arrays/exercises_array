#Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1,3,5,7,9,11]
number = 3
#The solution
arr.each do |num|
  if num == number
    puts "#{number} is in the array"
  end
end

#My method
if arr.include?(number)
  puts "#{number} is in the array"
end

#What will the following programs return? What is the value of arr after each?

arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last) #=> Return 1

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last) #=> Return [1,2,3]

#How do you return the word "example" from the following array?


arr = [["test", "hello", "world"],["example", "mem"]]
#My solution but at the beginning i was thinking that
#arr[1[0]] but i did not think it was wrong so i was thinking it was not working like that !
no_nested_array = arr.flatten
puts no_nested_array[3]

#Solution
arr.last.first
arr[1][0]

#What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

# 1. arr.index(5) #=> return the 3ème index

# 2. arr.index[5] #=> Error it's not the good syntax

# 3. arr[5] #=> return element 8


# What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] #=> "e"
b = string[11] #=> "A"
c = string[19] #=> nil


names = ['bob', 'joe', 'susan', 'margaret']
names[3] = "jody"

puts names
#Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.


films = ["Titanic", "Nezha", "Matrix"]

films.each_with_index {|films, idx| puts "#{idx+1}. #{films}"}

#Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
number_array = [1,2,3,4,5]
#Create the new array with the +2
number_array2 = number_array.map{|num| num+2}

p number_array
p number_array2
