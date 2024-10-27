#Can pass a hash as a optional option
def greeting(name, option = {})
  if option.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} and I'm #{option[:age]}" + "years old and I live in #{option[:city]}"
  end
end

greeting("Bob")
greeting("Bob", {age: 62, city: "New York City"})
#Curly braces not required for argument when the hash is the last argument
#Commonly used by rails developers
greeting("Bob", age: 62, city: "New York City")

#Lets say you have 6 person in data for now you will not do that ! :
names1 = "testy"
names2 = "testt"
names3 = "testw"
names4 = "tests"
names5 = "testc"
names6 = "testz"
#It's completely counter productif and it's not clear at all and you need to find a good name clear for each variable
#Also for accessing all of those will take some effort compared to a array
#So if they must not be ordered use a hash !
#Or if they do not have a natural label then an array is fine
