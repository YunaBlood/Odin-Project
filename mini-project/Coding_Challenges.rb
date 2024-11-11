require 'pry-byebug'


def reverse_case(string)
  string.swapcase
end

puts reverse_case("Hello")


def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end

puts factorial(5)

def palindrome?(string)
  if string.downcase.reverse.gsub(" ", "") == string.downcase.gsub(" ", "")
    puts "#{string} is a palindrome"
  else
    puts "#{string} is not a palindrome"
  end
end

puts palindrome?("A man a plan a canal Panama")


def find_duplicates(arr)
  arr.uniq.select{|element| arr.count(element) > 1}
end

puts find_duplicates([1, 2, 3, 4, 2, 1])
