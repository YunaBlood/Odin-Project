#Life before enumerable

friends = %W(Sharon Leo Leila Brian Arun)

invited_list = []

#Make a for loop to iterate trough friend and if not equal to brian push to invited list
#Because brian is not invited

for friend in friends do
  unless friend == "Brian"
  invited_list.push(friend)
  end
end

p invited_list

#Select enumerable to do same as above more simply
#One line select instead of the for loop and until conditional
friends.select {|friend| friend != "Brian"}

p invited_list

#Or more to the point to remove the negation with reject

#Use reject to reject if friend is equal to "Brian"
friends.reject {|friend| friend == "Brian"}

p invited_list

#The each method

#Say hello to each friend in the array and return the array of friends
friends.each {|friend| puts "Hello, " + friend}

#Block with more than one line
#use do...end instead of {...} which is a normal block like above with friends
#Same logic |num| is the block variable and could be named anything i named it num because it's more explicit of what it is

my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}"
end

#Work with hashes
#Default behavior yield both key and value individually or together depending on how you define the block variable

my_hash = {"one" =>1, "two" =>2 }

my_hash.each {|key, value| puts "#{key} is #{value}" }

#=> one is 1
#=> two is 2
#=> { "one" => 1, "two" => 2}

my_hash.each {|pair| puts "the pair is #{pair}"}

#=> the pair is ["one", 1]
#=> the pair is ["two", 2]
#=> { "one" => 1, "two" => 2}

#Each return the original array or hash regardless of the code inside the code block

friends.each {|friend| friend.upcase}

#Return the original array each was called on
#So no upcase
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# The each_with_index method

fruits = %W(apple banana strawberry pineapple)

fruits.each_with_index {|fruit, index| puts fruit if index.even?}
#Puts the two fruits that are even
#=> apple
#=> strawberry
#Return original array
#=> ["apple", "banana", "strawberry", "pineapple"]

#The map method
#Wrong with the each method that not what we want it return the original array without transformation so our each did not upcase each friend
friends = %W(Sharon Leo Leila Brian Arun)

friends.each {|friend| friend.upcase}

#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

shouting_at_friends = []

friends.each { |friend| shouting_at_friends.push(friend.upcase)}
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends  #=> ['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']

#Work but it take a lot of extra work ! if we want to use each we need to create a variable to place it the upcase friend inside and push those friend inside the empty array

#map
#Return a new array without affecting the self or original array !

friends.map {|friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

my_order = ["medium Big Mac", "medium fries", "medium milkshake"]

#Replace medium by extra large
my_order.map {|item| item.gsub('medium', 'extra large')}
#=> ["extra large Big Mac", "extra large fries", "extra large milkshake"]


salaries = [1200, 1500, 1100, 1800]

salaries.map {|salary| salary - 700}
#=> [500, 800, 400, 1100]

#WAnt to return a new array with the result of the block of code map is the method !

#The select method
#Do with the each method first not that different from the for method at the beginning of the file
friends = %W(Sharon Leo Leila Brian Arun)

invited_list = []

friends.each do |friend|
  unless friend == "Brian"
    invited_list.push(friend)
  end
end

p invited_list
#=> ["Sharon", "Leo", "Leila", "Arun"]

#Select
#Can simplify this code in two line
#Or three line if you want to show result in the console
friends = %W(Sharon Leo Leila Brian Arun)


friends.select {|friend| friend != "Brian"}

p invited_list

responses = {Sharon: "yes", Leo: "no",Leila: "no", Arun: "yes" }

p responses.select {|person, response| response == "yes"}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}

#Redo with each to see my understanding

will_come = []

responses.each do |person, response|
  if response == "yes"
    will_come.push(person, response)
  end
end

p will_come

#But should no do it like that should do it with select it's easier !!

#The reduce method

#Reduce an array or hash and reduce it to a single object
#Should use when want to get an output of a single value

my_numbers = [5, 6, 7, 8]

sum = 0

my_numbers.each {|number| sum += number}

puts sum
#=> 26

#reduce
#The first block variable in a reduce block is a accumulator and is the value that returned at the end of the block
#Different initial value
my_numbers.reduce(1000) {|sum, number| sum + number }
#=>1026
# Iteration 0: sum = 5 + 6 = 11
# Iteration 1: sum = 11 + 7 = 18
# Iteration 2: sum = 18 + 8 = 26

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

#create a hash and place 0 inside the value by default
#The accumulator is result and it get incremented for each vote
#At the end show the result with key value and show which place won
votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  p result
end

#=> {"Bob's Dirty Burger Shack"=>2, "St. Mark's Bistro"=>1}

#Explanation of what happened :

hundreds = Hash.new(100)

hundreds["new"] #=> 100
hundreds["new"] = 99
hundreds["new"] #=> 99
#But the default value for not existing key is still 100 because that the default value we assigned when we created our hundreds hash

# 1. Iteration 0:
  # result = {}
  # Remember, this hash already has default values of 0, so result["Bob's Dirty Burger Shack"] == 0 and result["St. Mark's Bistro"] == 0

# Iteration 1:
  # The method runs result["Bob's Dirty Burger Shack"] += 1
  # result = {“Bob’s Dirty Burger Shack” => 1}

# Iteration 2:
  # The method runs result["St. Mark's Bistro"] += 1
  # result = {“Bob’s Dirty Burger Shack” => 1, “St. Mark’s Bistro” => 1}

# Iteration 3:
  # The method runs result["Bob's Dirty Burger Shack"] += 1
  # result = {“Bob’s Dirty Burger Shack” => 2, “St. Mark’s Bistro” => 1}

#Return still one object a hash in this case !

#Bang methods
#Example with earlier exercise where we wanted to name each our friend in all caps

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

#Mutate the original array
#WARNING !!!
#(!) BANG method modify original array even for map which normally return a new array !

friends.map! {|friend| friend.upcase}

friends

#Avoid using those methods they are too destructive and they are surely a better way !

#Return value of enumerable
#If you don't place the select or map result into a variable nothing will change you can have the result but if it's not stocked you cannot use it without changing the caller !

friends = %W(Sharon Leo Leila Brian Arun)
#Place the select inside a variable
invited_friends = friends.select {|friend| friend != "Brian"}

p friends

p invited_friends

#Better option would be te wrap the enumerable inside a method

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]
