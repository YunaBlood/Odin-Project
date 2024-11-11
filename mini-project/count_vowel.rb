require "pry-byebug"


def count_vowels(string)
  vowel_count = {a: 0, e: 0, i: 0, o: 0, u: 0}

  string.downcase.chars.each do |char|
    symbol_char = char.to_sym
    if vowel_count.key?(symbol_char)
      vowel_count[symbol_char] += 1
    end
  end


  vowel_count.delete_if {|k, v| v == 0}

vowel_count

end

puts count_vowels("Hello World")  # Expected output: {"e" => 1, "o" => 2}
puts count_vowels("aeiou")        # Expected output: {"a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1}
puts count_vowels("Coding!")      # Expected output: {"o" => 1, "i" => 1}
