def caesar_cipher(word, shift)
  #Initialize array
  caesar_cipher_array = []
  #Split word into an array of string
  #Iterate word into each char
  word.split("").map do |char|
    #Check if char is between a and z
    #if yes shift and wrap around a-z and push inside the array
    if char.between?("a","z")
      caesar_cipher_array.push((char.ord + shift - "a".ord) % 26 + "a".ord)
      #Same as above except for uppercase
    elsif char.between?("A","Z")
      caesar_cipher_array.push((char.ord + shift - "A".ord) % 26 + "A".ord)
    else
      #Push the special character like whitespace etc.. inside the array in integer form
      caesar_cipher_array.push(char.ord)
    end
  end
  #Create a new variable encrypted string and pass the array and transform the array to get the character back into char and join the array into a string
  encrypted_string = caesar_cipher_array.map {|char| char.chr}.join("")

  #Show the user what happen
  puts "String in clear : #{word}"
  puts "Number of shift : #{shift}"
  puts "Array of number #{caesar_cipher_array}"
  puts "String encrypted : #{encrypted_string}"

end

puts caesar_cipher("What a string", 5)
