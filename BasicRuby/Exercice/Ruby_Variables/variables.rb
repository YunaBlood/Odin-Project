# dog = nil #No problem V
# # "cat" # Doesn't work is a string not a name for a variable X
# passw0rd = nil #No problem  V
# # webpage-url #Not sure but i don't think you should use that one because it maybe reserved and it's not in snake_case so maybe both V X
# mcKinley_Mountain = nil#NoProblem but should use only lowerCase we are not combining camelCase and snake_case so should work but is bad practice X
# # 100baby_names#Not sure if it will work but even if it work bad practice to use number first in your variable names also you should replace that space with a underscore to keep to snake_case X

# my_1st_variable = 10
# my_2nd_variable = ""   #=>   an empty string
# my_3rd_variable = nil   #=>   nil means nothing, which is different from an empty string
# # my_4th_variable   #=>   Error! Need to assign it to something, even nothing (nil)


# #Exercise: A few assignments
# # Let's review what we've learned about variable assignment so far. Figure out what's in the variables in the following series of statements:

# x = 9 #9
# y = x + 7 #16
# y = x + 4 #13
# puts x
# puts y
# dog = "siamese"
# cat = "chow chow"
# cat += dog # cat = cat + dog = "chow chowsiamese "
# puts dog
# puts cat
# a = 99
# a = a + 12 #111
# # b = a + c   #Error c is undefined
# puts a



# number = 90
# string = "a"
# yvar = (string + number.to_s) + string
# c = number.to_s.upcase
# d = "#{c}#{number}"
# yvar += (number +yvar.to_i).to_s
# puts d + string + yvar
# number = number.to_s + "variable_x" + d
# puts number

# tom = "kitty"
# jerry = tom
# tom = "mouse"

# puts tom
# #=> mouse
# puts jerry
# #=> kitty


# tom = "kitty"
# jerry = "kitty"
# tom = tom + "kat"
# puts tom
# #=> kittykat
# puts jerry
# #=>kitty

# quiet_version = "hello there"
# loud_version = quiet_version.upcase! #Modify the original object if the methods has a ! at the end

# puts loud_version
# #=> HELLO THERE
# puts quiet_version
# #=> hello there
# #

# # tom = "kitty"
# # jerry = tom

# # tom << "kat" #Modify the original object

# # puts tom
# # #=> kittykat

# # puts jerry
# # #=> kittykat

# tom = "kitty"
# jerry = tom
# tom += "kat"

# puts jerry
# #=> kitty

# puts tom
#=> kittykat

#Exercise: Review time
# Time for a quick reinforcement of what we've learned about variables. These are solely meant to be slight brain teasers. You will never have to write such silly arrangements of variable assignments in real world applications.

# Determine the value of the variables in each of these code snippets:


# foo = "chicken"
# bar = foo
# puts foo
# #=> chicken
# puts bar
# #=> chicken

# x = 100.0
# y = 100.0
# x += 42.0
# puts x
# #=> 142.0
# puts y
# #=> 100.0 unchanged

# a = "One hundred"
# b = a + " and " + a
# puts a
# #=> One hundred
# puts b
# #=> One hundred and One hundred

# alpha = "star"
# beta = alpha.upcase
# alpha = beta.downcase
# puts alpha
# #=> star
# puts beta
# #=> STAR

# bob = "uncle-"
# earth = bob #become "uncle-"
# earth << bob #uncle-uncle-
# mary = bob.downcase + earth.upcase! + bob.capitalize #uncle-uncle-UNCLE-UNCLE-Uncle-uncle
# earth << bob #UNCLE-UNCLE-UNCLE-UNCLE-
# puts bob
# #=>UNCLE-UNCLE-UNCLE-UNCLE-
# puts earth
# #=>UNCLE-UNCLE-UNCLE-UNCLE-
# puts mary
# #=>uncle-uncle-UNCLE-UNCLE-Uncle-uncle

# Exercise: Swap the values in two variables
# Given variables a and b, write a script that switches the two values in them so that a contains b's value and vice versa.


# a = 1
# b = 2
# p = a

# a = b
# b = p
# puts a
# puts b

a = 42.
b = 3   #   a = 42   b = 3

a = b - a   #   a = -39   b = 3
b = b - a   #   a = -39   b = 42
a = b + a   #   a = 3   b = 42

puts a
puts b
