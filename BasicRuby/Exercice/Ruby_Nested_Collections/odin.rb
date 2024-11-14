#Nested collections

#Nested array
#Array can contain any type of data including other array
#Which is a nested array or a multidimensional array.

test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81],
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"],
]

#Accessing elements

teacher_mailboxes[0][0]
#=> "Adams"
teacher_mailboxes[1][0]
#=> "Jones"
teacher_mailboxes[2][0]
#=> "Perez"

#Negative index
teacher_mailboxes[0][-1]
#=> "Davis"
teacher_mailboxes[-1][0]
#=> "Perez"
teacher_mailboxes[-1][-2]
#=> "Smith"

teacher_mailboxes[3][0]
#=> NoMethodError
teacher_mailboxes[0][4]
#=> nil

teacher_mailboxes.dig(3, 0)
teacher_mailboxes.dig(0, 4)

#Creating a new nested array

mutable = Array.new(3, Array.new(2))
#=>[[nil,nil], [nil, nil], [nil,nil]]

mutable[0][0] = 1000
#=>1000
mutable
#=> [[1000, nil], [1000, nil], [1000, nil]]

#Changing the first elements in the first nested array changed all three nested arrays
#This same behavior will happen with string, hashes and other mutable objects.

#pass the second argument in a block to create immutable nested array

immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

#Changing the first element did not cause all the other nested array to change

#Adding and removing elements

#adding with push at the end of array or with the shovel operator
test_scores << [100, 99, 98, 97]
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[0].push(100)
#=> [97, 76, 79, 93, 100]
test_scores
#=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]

#removing the last array added or the last element added
test_scores.pop
#=> [100, 99, 98, 97]
test_scores[0].pop
#=> 100
test_scores
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]

#iterating over a nested array

teacher_mailboxes.each_with_index do |row, row_index|
  row.each_with_index do |teacher, column_index|
    puts "Row: #{row_index} Column: #{column_index} = #{teacher}"
  end
end


#Only need teacher name in the array not needing the array index
#So we can flatten it to create one array
teacher_mailboxes.flatten.each do |teacher|
  puts "#{teacher} is amazing"
end

#Nesting two predicate enumerables together

test_scores.any? do |scores|
  scores.all? {|score| score > 80}
end

#Nested hashes

vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

#Accessing data

vehicles[:alice][:year]
#=> 2019
vehicles[:blake][:make]
#=> "Volkswagen"
vehicles[:caleb][:model]
#=> "Accord"

#Use dig methods if try to access a nonexistent nested hash
vehicles[:zoe][:year]
#=> NoMethodError
vehicles.dig(:zoe, :year)
#=> nil
vehicles[:alice][:color]
#=> nil
vehicles.dig(:alice, :color)
#=> nil

#Adding or removing data

vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}
#=> {:year=>2021, :make=>"Ford", :model=>"Escape"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

vehicles[:dave][:color] = "red"
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :blake=>{:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}

vehicles.delete(:blake)
#=> {:year=>2020, :make=>"Volkswagen", :model=>"Beetle"}
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape", :color=>"red"}}

vehicles[:dave].delete(:color)
#=> "red"
vehicles
#=> {:alice=>{:year=>2019, :make=>"Toyota", :model=>"Corolla"}, :caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

#Methods

vehicles.select { |name, data| data[:year] >= 2020 }
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]

vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:caleb, :dave]

vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]
