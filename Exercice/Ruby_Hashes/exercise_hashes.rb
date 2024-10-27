# Exercises
#1. Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only siblings' names into a new array.

# family = {  uncles: ["bob", "joe", "steve"],
#             sisters: ["jane", "jill", "beth"],
#             brothers: ["frank","rob","david"],
#             aunts: ["mary","sally","susan"]
#           }
# Solution

family = {
  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank", "rob", "david"],
  aunts: ["mary", "sally", "sussan"]
}

#First way to do it with select
only_siblings = family.select do |key, value|
  key == :sisters || key == :brothers
end
#And flattening the values for getting one array
array_siblings = only_siblings.values.flatten()
#Second way with fetch_values and flattening the array after
# only_siblings = family.fetch_values(:sisters, :brothers)

# array_siblings = only_siblings.flatten()

p array_siblings


#2. Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

# Solution
#Merge doesn't change self if not assigned to a variable will also overwrite if the same key is used
#If you pass name and want to merge in last_name last_name will overwrite the name with same key left to right
#Make a copy of self
name = {
  Ebony: "Ebony",
  Santiago: "Santiago",
  Lois: "Lois"
}

last_name = {
  EbonyLastName: "Long",
  Santiago: "Rios",
  LoisLastName: "Hudson"
}

merged_hash = name.merge(last_name)
p merged_hash
p last_name
p name
# merge! modify self and return self after modification
# Does the same thing with duplication in key
name = {
  Ebony: "Ebony",
  Santiago: "Santiago",
  Lois: "Lois"
}

last_name = {
  EbonyLastName: "Long",
  Santiago: "Rios",
  LoisLastName: "Hudson"
}
#Modify self directly so last_name
merged_hash = last_name.merge!(name)
p merged_hash
#Modified
p last_name
#Stay the same because didn't merge
p name

#3. Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

# Solution
cat = {
  name: "Whiskers",
  weight: "20kg",
  race: "Persian"
}
puts "Only key: "
cat.each_key {|key| puts key}
puts "Only value: "
cat.each_value {|v|puts v}
puts "Pair of key and values:"
cat.each_pair {|k, v| puts k, v}

#4. Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

# Solution

p person[:name]

# 5. What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.

# Solution
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

if person.value?("Bob")
  puts "Inside"
else
  puts "Not existing"
end

#6. Given the following code...

x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# What's the difference between the two hashes that were created?

p my_hash[x]
# Solution
#The difference between those two is the fact that x is a variable so it already has a adress of a value assigned to it so the value of the variable will become the key for it
#my_hash #=> {:x=>"some value"}
#my_hash2 #=> {"hi there"=>"some value"}

#7. If you see this error, what do you suspect is the most likely problem?

# NoMethodError: undefined method `keys' for Array
# A. We're missing keys in an array variable.

# B. There is no method called keys for Array objects.

# C. keys is an Array object, but it hasn't been defined yet.

# D. There's an array of strings, and we're trying to get the string keys out of the array, but it doesn't exist.

# Solution
#B because keys is for the hashes which are key-values pair
