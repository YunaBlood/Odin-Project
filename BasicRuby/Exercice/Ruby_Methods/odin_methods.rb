#Ruby's build in methods

#Methods are typically called by adding
#.method name after an instance of the object
#reverse build in methods for strings object
"anything".reverse

#Globally accessible method
#like print and puts
puts "anything" #=> anything
#Same as above ruby interpret it in the same way
puts("anything") #=>

#========================================================
#Creating a method



def my_name
  "Joe Smith"
end

puts my_name #=> "Joe Smith"
#========================================================
#Methods names

#You can name your method anything that is not :
#The 40 reversed word of ruby such as end, while, for, unless, until etc...
#Cannot use any symbols other than _,?,! and =.
#Cannot use ?,!, or = anywhere other than at the end of the name.
#Cannot begin a method name with a number
#Should full_lower_case and snake_case because uppercase start are constant in ruby
#Here are some example of valid and invalid method names:

# method_name #valid
# _name_of_method #valid
# # 1_method_name #invalid (Start with a number)
# method_27 #valid
# method?_name #invalid (? In the middle of the name)
# method_name! #valid
# begin #invalid (Ruby reserved word)
# begin_count #valid

#Idealy method should only do one thing !
#If you cannot name your method because it does too many thing break it down into more methods
#Make testing, readability, scalability and maintainability easier
#========================================================
#Parameters and arguments
#Default parameters

def greet(name = "stranger")
  "Hello, " + name + "!"
end
puts greet("Jane") #=> "Hello, Jane!"
puts greet #=> Hello, stranger!
#========================================================
#What methods return
#Should not return anything in other languages because not return is provided example:
#Stop the method from continuing after Joe Smith returned
def my_name
  return "Joe Smith"
  "Jane Doe"
end
puts my_name #=> "Joe Smith"

#Ruby offer implicit return for methods
#Even tho explicit return are still useful for checking thing like input errors before continuing.

def even_odd(number)
  unless number.is_a? Numeric
  return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20) #=> That is a even number.
puts even_odd("Ruby") #=> A number was not entered

#Difference between puts and return

#puts is a method that print whatever argument you pass it to the console.

#return is the final output of a method that you can use in other in your code
#Method for squaring a number and putting in the console
#Doesn't return the value
def puts_squared(number)
  puts number * number #Only show in the console doesn't return any value
end

x = puts_squared(20) #=> nil

if x == nil
  puts "x is empty" #True because x is = nil
else
  puts "x is not empty"
end

#Rewrite same method for squared but with implicit return instead of puts:

#Using explicit return will act exactly the same in this example so not neccesary

def return_squared(number)
  number * number
end

z = return_squared(20) #=> 400
y = 100

sum = z + y #=> 500

puts "The sum of #{z} and #{y} is #{sum}" #=> The sum of 400 and 100 is 500
#========================================================

#Chaining methods

phrase = %W(be to not or be to)

puts phrase.reverse.join(" ").capitalize
#Produce the following steps:
# ["be", "to", "not", "or", "be", "to"].reverse
# = ["to", "be", "or", "not", "to", "be"].join(" ")
# = "to be or not to be".capitalize
# = "To be or not to be"

#Predicate methods

#Will return a boolean so true or false
#Have a question mark at the end of their name
#even?, odd?, between?

puts 5.even? #=> false
puts 6.even? #=> true
puts 17.odd? #=> true

puts 12.between?(10, 15) # true

#Can also create own method with a ? at the end to indicate that it returns a boolean

#Bang methods

whisper = "HELLO EVERYBODY"

puts whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"

puts whisper.downcase! #=> "hello everybody"
puts whisper #=> "hello everybody"

#Writing whisper.downcase! is the equivalent of writing whisper = whisper.downcase.
#It change the self directly !
