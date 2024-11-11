
def cipher(string, shift)
  result_encrypted = string.split("").map do |char|
    char.between?("a", "z") ? ((char.ord + shift - "a".ord) % 26 + "a".ord).chr :
    char.between?("A", "Z") ? ((char.ord + shift - "A".ord) % 26 + "A".ord).chr : char
  end
  result_encrypted.join("")

end

puts cipher("What a string!",5)
