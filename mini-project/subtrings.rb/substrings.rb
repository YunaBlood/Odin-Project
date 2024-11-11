dictionary = ["bellow","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  lower_string = string.downcase.gsub(/[^A-Za-z0-9]/, "")

  dictionary_lowecase = dictionary.map {|word| word.downcase}

  dictionary_hash = Hash.new(0)

  dictionary_lowecase.each do |word|
    count_word = lower_string.scan(word).length
    count_word > 0 ? dictionary_hash[word] += count_word : nil
  end
  dictionary_hash
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
