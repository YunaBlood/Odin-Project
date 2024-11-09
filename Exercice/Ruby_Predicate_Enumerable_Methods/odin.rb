#Predicate methods are question  always and return true or false
#Example Include? I ask if it include the thing i'm querying for in a collection of data like an array or hashes
#The Include? method


numbers = [5,6,7,8]
element = 6
result  = false

#Show how to do a include method with a each because each like we demonstrated before can do all but they are already method in place for all sort of thing so it's better to understand the thing you can with each and after use the method to not DRY even if DRY can be a good thing like maybe remake something to understand a subject you are not good with like git maybe ?
#But i'm starting to ramble and should focus on what i was saying
numbers.each do |number|
  if number == element
    result = true
    break
  end
end

p result
#=> true

#Change the variable element and reassign result to false
#It can be hard to not DRY when you make thing like each for each change so a better way to do that can be to make a methods like include but with the each and place it inside and use it instead because i do repeat myself with the each do
element = 3
result = false

numbers.each do |number|
  if number == element
    result = true
    break
  end
end


#Return the result
result
#=> false

#I remade include with each and place it in a variable to not DRY even it was not necessary it was for the experimentation of remaking thing already made !
def check_numbers?(numbers,element)
  result = false
  numbers.each do |number|
    if number == element
      result = true
      break
    end
  end
  result #=> return true
end

check_numbers?([5,5,6,8,7],5)

#Now using include this code can be simplified because it only ask for the number inside instead of my methods check_numbers? which is a private method and need two arguments even if i'm sure i can upgrade it to take into argument the object preceded with just the element needed to make the comparison

numbers = [5, 6, 7, 8]

p numbers.include?(6)
#=> true

p numbers.include?(3)
#=> false

#Another example with string
#We want to remove Brian from the invited list and check if the array does not have brian
friends = %W(Sharon Leo Leila Brian Arun)

invited_list = friends.select { |friend| friend != "Brian" }

invited_list.include?("Brian")
#=> false

#The any? method

#Check if number is greater than 500 or less than 20 in an array

numbers = [21,42,303,499,550,811]
result = false

#Do it with each first to show how it work

numbers.each do |number|
  if number > 500
    result = true
    break
  end
end

result
#=> true

#Reset result
result = false

numbers.each do |number|
  if number < 20
    result = true
    break
  end
end

result
#=> false

numbers.any? {|number| number > 500}
#=> true

numbers.any? {|number| number < 20 }
#=> false

#The all? method

#Each method check if char are 3char long or 6 char long

fruits = %W(apple banana strawberry pineapple)

matches = []

result = false

fruits.each do |fruit|
  if fruits.length > 3
    matches.push(fruit)
  end
end

result = fruits.length == matches.length

result
#=> true

#Reset the result
result = false

fruits.each do |fruit|
  if fruits.length > 6
    matches.push(fruit)
  end
end

result = fruits.length == matches.length
result
#=> false

#Using all? this code can be simplified

fruits.all? {|fruit| fruit.length > 3 }
#=> true
fruits.all? {|fruit| fruit.length > 6}
#=> false

#Thing to keep in mind for debugging will return true by default even on empty array or hash because they return true all is true remember

#Unless your block return nil or false !

#The none? method
#return true only if the condition matches none of the elements in your array or hash
#otherwise it return false

#each method

fruits = %W(apple banana strawberry pineapple)
result = false

fruits.each do |fruit|
  if fruit.length > 10
    result = false
    break
  end
  result = true
end

result
#=> true

result = false

fruits.each do |fruit|
  if fruit.length > 6
    result = false
    break
  end
  result = true
end

result
#=> false


fruits.none? {|fruit| fruit.length > 10}
#=> true
fruits.none? {|fruit| fruit.length > 6}
#=> false
