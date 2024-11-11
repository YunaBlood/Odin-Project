require "pry-byebug"

def reverse_preserve(string)

  string_array = string.split("")
  letters = []
  special_char = []
  string_array.each_with_index do |char, index|
    if char =~ /[a-zA-Z]/ #CHeck if char is letter
      letters << char
    else
      special_char << {index: index, char: char} #Store special char and their index
    end
  end

  reversed_letter = letters.reverse

  result = string_array.map.each_with_index do |char, index|
    if char =~ /[a-zA-Z]/ #Check if char is letter
      reversed_letter.shift
    else
      char
    end
  end

  result.join
end

puts reverse_preserve("HELLO, world!")
