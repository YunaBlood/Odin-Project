#LaunchSchool lesson and exercise

# puts "Put in a number"
# x = gets.chomp.to_i

# # if a == 3
# #   puts "a is 3"
# #   elsif a == 4
# #     puts "a is 4"
# #   else
# #     puts "a is neither 3, nor 4"
# # end

# # Example 1
# if x == 3
#   puts "x is 3"
# end

# # Example 2
# if x == 3
#   puts "x is 3"
#   elsif x == 4
#     puts "x is 4"
# end

# # Example 3
# if x == 3
#   puts "x is 3"
# else
#   puts "x is NOT 3"
# end

# # Example 4: must use "then" keyword when using 1-line syntax
# if x == 3 then puts "x is 3" end

# #Rewrite exemple 1
# puts "x is 3" if x == 3

# puts "x is NOT 3" unless x == 3

#For example, all of the following are good examples of using a ternary expression:
# foo = hitchhiker ? 42 : 3.1415    # Assign result of ?: to a variable
# puts(hitchhiker ? 42 : 3.1415)    # Pass result as argument
# return hitchhiker ? 42 : 3.1415    # Return result


# #However, the following snippets use ternaries that choose between actions, and should be considered inappropriate uses:
# hitchhiker ? (foo = 42) : (bar = 3.1415) # Setting variables
# hitchhiker ? puts(42) : puts(3.1415)      # Printing

#Every expression evaluate as true when used in flow control except for false and nil
# a = 5
# if a
#   puts "how can this be true"
# else
#   puts "it is not true"
# end

# #Because of that we can even write code like that
# if x = 5
#   puts "how can this be true?"
# else
#   puts "it is not true"
# end

# is_ok = (foo || bar) ? true : false

# is_ok
# if (foo || bar)
#   is_ok = true;
# else
#   is_ok = false;
# end
# #Either of those snippets sets is_ok to an appropriate boolean value. However, they do so in a somewhat wordy manner. Many JavaScript programmers use a more concise coercion by using what looks like a !! operator:

# #In reality, !! isn't a separate operator in Ruby Instead, it's two consecutive ! operators. The expression !!a is equivalent to writing !(!a). The inner ! converts the value of a to false if it is truthy, or true if a is falsy. The outer ! then flips true to false or false to true. In the end, we end up with a boolean value instead of a truthiness value:

# is_ok = !!(foo || bar)

#Exercice 1 :
# (32 * 4) >= 129 #=> false 32 * 4 is not bigger or equal to 129
# false != !true #=> false because you say false is not equal to false because you transform true into false with !
# true == 4 #=> false because it say true is equal at 4 it does not ask if 4 is a truthy value
# false == (847 == '847') #true because the value are not the same type
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false #true

#Exercice 2 :
#Write a method that takes a string as an argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)

def caps(string)
  if(string.length > 10)
    puts string.upcase
  else
    puts string
  end
end

#Exercice 3
#Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.


puts "Please enter a number between 0 and 100."
number = gets.chomp.to_i

if number < 0
  puts "You can't enter a negative number !"
elsif number <= 50
  puts "#{number} is between 0 and 50"
elsif number <= 100
  puts "#{number} is between 50 and 100"
else
  puts "#{number} is above 100"
end

#What will each block of code below print to the screen? Write your answer on a piece of paper or in a text editor and then run each block of code to see if you were correct.
# Snippet 1
'4' == 4 ? puts("TRUE") : puts("FALSE")
#=> It will put false because the value are not the same !

# Snippet 2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?" #Should be true so it should execute this code and not the falsy one
else
  puts "Did you?"
end

# Snippet 3
y = 9
x = 10
if (x + 1) <= (y) #not sure if false because comparison should have a higher precendance but because of the parentize i'm not sure
  puts "Alright."
elsif (x + 1) >= (y) #Same as before i think it's true because x is greater than y
  puts "Alright now!"
elsif (y + 1) == x #Should return true but because it already return true at the second condition never read
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end


#When you run the following code...
#You get the following error message..
# exercise.rb:8: syntax error, unexpected end-of-input, expecting keyword_end
# Why do you get this error and how can you fix it?
# We were getting the error because it was missing the end for the method declaration i was taking the end for the if statement
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)

#Write down whether the following expressions return true or false or raise an error. Then, type the expressions into irb to see the results.
(32 * 4) >= "129" #Return error comparison with different type
847 == '847' #Return false or error
'847' < '846' #false
'847' > '846' #true
'847' > '8478' #false
'847' < '8478' #true '847' is less than '8478'
