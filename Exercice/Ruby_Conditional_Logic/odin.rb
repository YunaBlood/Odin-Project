# if attack_by_land == true
#   puts "release the goat"
# elsif attack_by_sea == true
#   puts "release the shark"
# else
#   puts "release Kevin the octopus"
# end

# if 1 < 2 && 5 < 6
#   puts "Party at Kevin's!"
# end

# # This can also be written as
# if 1 < 2 and 5 < 6
#   puts "Party at Kevin's!"
# end

# if 10 < 2 || 5 < 6 #=> although the left expression is false, there is a party at Kevin's because the right expression returns true
#   puts "Party at Kevin's!"
# end

# # This can also be written as
# if 10 < 2 or 5 < 6
#   puts "Party at Kevin's!"
# end


grade = 'F'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end
puts did_i_pass

#If you need to do some more complex code manipulation, you can remove the then keyword and instead place the code to be executed on the next line.
case grade
when "A"
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when "D"
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end

#An unless statement works in the opposite way as an if statement: it only processes the code in the block if the expression evaluates to false. There isn’t much more to it.
age = 19
unless age < 18
  puts "Get a job."
end

puts "Welcome to a life of debt." unless age < 18

unless age < 18
  puts "Down with that sort of thing."
else
  puts "Careful now!"
end

#You should use an unless statement when you want to not do something if a condition is true, because it can make your code more readable than using if !true.
#

response = age < 18 ? "You still have your entire life ahead of you." : "You're all grown up."
puts response

#Same as above but more verbose so if one liner ternary operator prefered instead conditional are complicated the more important thing is the code need to be readable and understanble by other people

if age < 18
  response = "You still have your entire life ahead of you."
else
  response = "You're all grown up."
end

puts response
