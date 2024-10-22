# case_statement.rb

# a = 5

# case a
# when 5 then puts "a is 5"
# when 6 then puts "a is 6"
# else "a is neither 5, nor 6"
# end

# if_statement.rb

# a = 5

# if a == 5
#   puts "a is 5"
# elsif a == 6
#   puts "a is 6"
# else
#   puts "a is neither 5, nor 6"
# end
# case_statement.rb <-- refactored

a = 5

answer = case a
  when 5
    "a is 5"
  when 6
    "a is 6"
  else
    "a is neither 5, nor 6"
  end

puts answer

# case_with_no_arg_statement.rb
case
when a == 5
  puts "a is 5"
when a == 6
  puts "a is 6"
else
  puts "a is neither 5, nor 6"
end
