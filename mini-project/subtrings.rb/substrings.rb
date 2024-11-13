dictionary = ["bellow","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  lower_string = string.downcase.gsub(/[^A-Za-z0-9]/, "")

  result = Hash.new(0)

  dictionary.each do |word|
    count_word = lower_string.scan(word.downcase).size
    result[word.downcase] += count_word if count_word > 0
  end
  result
end

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
