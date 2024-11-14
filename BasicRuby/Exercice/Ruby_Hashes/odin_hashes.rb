#Creating Hashes
my_hash = {
    "a random word" => "ahoy",
    "Dorothy's math test score" => 94,
    "an array" => [1, 2, 3],
    "an empty hash vitin a hash" => {}
}
#Like array can create hashes with Hash.new
my_hash = Hash.new
my_hash #=> {}

hash = {9 => "nine", :six => 6 }
#========================================================
#Accessing values
shoes = {
    "summer" => "sandals",
    "winter" => "boots"
}

shoes["summer"] #=> "sandals"

#return nil if key doesn't exist in the hash
shoes ["hiking"] #=> nil

#Which can be problematic if returning nil is a problem in the program so using can mitigate this problem
shoes.fetch("hiking") #=> KeyError: key not found: "hiking"
#Give a default value to a key that doesn't exist instead of a error
shoes.fetch("hiking", "hiking boots") #=> "hiking boots"
#========================================================
#Adding and changing data
#Add a key-value pair
shoes ["fall"] = "sneakers"

shoes #=> {"summer"=>"sandals", "winter"=>"boots", "fall"=>"sneakers"}

#Change value of a existing key
shoes["summer"] = "flip-flops"

shoes #=> {"summer"=>"flip-flops", "winter"=>"boots", "fall"=>"sneakers"}
#========================================================
#Removing data
#delete the key-value pair and return the value deleted
shoes.delete("summer")

shoes #=> {"winter" => "boots", "fall" => "sneakers"}
#========================================================
#Methods

#Hashes respond to many of the sames methods as arrays do since they both use Ruby's Enumerable module

books = {
  "Infinite Jets" => "David Foster Wallace",
  "Into the WIld" => "Jon Krakauer"
}

#Return the keys or values in function of the methods used and return an array of it
books.keys #=> ["Infinite Jets", "Into the Wild"]
books.values #=> ["David Foster Walace", "Jon Krakauer"]
#========================================================
#Merging two hashes

hash1 = {"a" => 100, "b" => 200}
hash2 = {"b" => 254, "c" => 300}
#If two of the hashes have the same key the value get overwriten by the one we want to merge in in this case hash1 will overwrite hash2 if two of the same key are inside
hash1.merge(hash2) #=> { "a" => 100, "b" => 254, "c" => 300 }
#========================================================
#Symbol as hash keys

# 'Rocket' syntax
american_cars  = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}

# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

american_cars[:ford] #=> "Mustang"
japanese_cars[:honda] #=> "Accord"
