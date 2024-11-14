def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split("")

  debugger

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")
isogram?("Valentin")
