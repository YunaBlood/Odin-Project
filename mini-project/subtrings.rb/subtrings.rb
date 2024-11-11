require "pry-byebug"

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)

  input_lowercase = string.downcase.gsub(/[^0-9A-Za-z]/, "") #Downcase and remove punctuation and whitespace

  dictionary_lowercase = dictionary.map {|word| word.downcase()} #Lowercase the dictionary

  dictionary_hash = {"below" => 0,"down" => 0,"go" => 0,"going" => 0,"horn" => 0,"how" => 0,"howdy" => 0,"it" => 0,"i" => 0,"low" => 0,"own" => 0,"part" => 0,"partner" => 0,"sit" => 0} #Create hash with the value at 0

  # binding.pry
  # Iterate trough dictionary and each character
  dictionary.each do |character|
    #Look at each character of input lower case return them as an array and check how many times a word appear with length
    match_count = input_lowercase.scan(character).length

    #Check if match_count is bigger than then
    #update the count of match_count to the value of the hash
    if match_count > 0
      dictionary_hash[character] += match_count
    end

  end

  #Delete the other key value hash if they have 0 in value
  dictionary_hash.delete_if {|k, v| v == 0}

end


p substrings("Howdy partner, sit down! How's it going?", dictionary)
