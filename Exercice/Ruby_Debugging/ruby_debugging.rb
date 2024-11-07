#Understanding Errors & Stack Traces
# def method1
#   method2(5)
# end

# def method2(invalid_variable)
#   puts invalid_variable
# end

# method1

# Debugging Ruby

Book = Struct.new(:title)
def find_book(title)
  books = []
  books << Book.new('Eloquent Ruby')
require 'pry-byebug'; binding.pry
  books.find {|b| b.title == title}
end

book = find_book('Eloquent Ruby')
p book #This will print our book object

book = find_book("POODR")
p book #This will print nil

# book.name # Guess what happens next!
# #Is nil so cannot find the name of nil


