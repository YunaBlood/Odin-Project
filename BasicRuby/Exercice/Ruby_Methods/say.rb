# def say(x)
#   #What is x ? Bad naming !
#   #A programmer need to reread your code to understand what is x that really bad for comprehension
#   #Instead you should name it something meaningful and explicit
#   puts x
# end

def say(words="hello") #Declare a default parameters to pass if nothing no argument is passed when calling methods !
  #Here we name it words and it really easy to see what is going on in the code !
  puts words + '.' #=> We only make the change here ! Will change each method call
end

#Optional Parentheses !
#Many Rubyists will off parenthses when calling methods as a style choices.
#More fluid while reading the code
#But sometimes can be confusing
#Because it can get tricky to decipher between local variables and methods names !
say
say "hi"
say "how are you"
say "I'm Fine"

#Value of a is still 5 because the methods definition create their own scope
#It's enterily outside the execution flow !
a = 5

def some_method
  a = 3
end

puts a

#When working with local scope issues beware of mixing up those two bellow !
#
#They seem similar at first but they have different behaviors when it come to local variable scope.

#Method invocation with a block

[1, 2, 3].each do |num|
  puts num
end

#Method definition

def print_num(num)
  puts num
end

print_num 6

#Mutating Arguments


def some_method(number)
  puts "Some_method"
  number = 7 # This is iplicitly returned by the method
end

a = 5
some_method(a)
puts a

