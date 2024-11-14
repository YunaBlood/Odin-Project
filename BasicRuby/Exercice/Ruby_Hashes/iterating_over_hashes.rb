# person = {
#   rob: {
#     name: 'rob',
#     height: '5.5 ft',
#     weight: '130 lbs',
#     hair: 'black'
#   },
#   bob: {
#     name: 'bob',
#     height: '6 ft',
#     weight: '160 lbs',
#     hair: 'brown'
#   }
# }

# person.each do |key, value|
#   puts "person's #{key} is #{value}"
# end


# iterating_over_hashes.rb

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end
