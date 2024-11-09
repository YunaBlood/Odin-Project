<h1 align = "center">
Ruby Basic Data Types
</h1>

> ## What are the basic arithmetic operators you can use on numbers?
>
>You can use those different arithmetic operators : **`+ - / * %`**
>
>## What’s the difference between an integer and a float?
>
> An integer cannot have decimal and are always a whole number example :
>>**`Float : 3.50` <br> `Integer : 3`**
>>
>## What method would you use to convert a float to an integer?
>>
>>**`number = 3.50` <br> `number.to_i with snake_case #=> 3`**
>>
>## What method would you use to convert an integer to a float?
>>
>>**`number = 3`<br>
>>`number.to_f with snake_case #=> 3.00`**
>>
>## What is a string?
>
>A string is a chain of character that can be something like "Hello"
>
>## What are the differences between single and double quotes?
>
>The difference between single and double quotes is their usage and limitation **the single quotes cannot escape character and interpolate string.**
>
>## What is string interpolation?
>
>String interpolation is passing a variable inside a chain of character example:
>>**`a = "Hello"` <br>
>>`"#{a} User !"` <br>
>>`Will have the result Hello User !`**
>>
>## How do you concatenate strings?
>
>You use the + between two string to add them example:
>>**`"Hello" + "World"`**
>>
>## What method would you use to change all the characters in your string to upper case?
>
>`string = "hello"` i would use **`string.upcase`**
>
>## What method would you use to split up strings into arrays?
>
>The method to split string into a array is **`.split`** example:
>>**`"Hello World".split will split into two word array #=> ["hello", "world"] or "hello".split("") #=> ["h", "e", "l", "l", "o"]`**
>>
>## What are escape characters?
>
>Escape character are character that ruby doesn't recognize like code and will not interpret like so they can be used to return to a new line and place other type of character inside a chain of character
>
>## How do you access a specific character or substring?
>
>You can access specific character or substring by calling the index of the word example :
>>**`"Hello"[0] will return H`**
>>
>## How do you convert other data types into strings?
>
>number = 1 you can convert by using :
>>**`number.to_s snake_case #=> "1"`**
>>
>## What is a symbol?
>
>A symbol is a string that should not be used to show data to the user or be changed it's similar to a constant but different at the same time because they get stored only once compared to the other type that can be stored multiple times even if the value is the same
>
>## How do you create a symbol?
>
>The syntax for creating a symbol is a colon at first and then the name of your symbol example:
>>**`:my_symbol`**
>>
>## What’s the difference between a symbol and a string?
>
>The difference between a symbol is a string is first the fact that a string do get stored multiple times compare to the symbol who get stored in the memory only once and also the symbol should not change in value compared to the string which can be reassigned
>
>## What does true represent?
>
>True represent a truthy value and can be used to check some condition example:
>>**`if age = 18 ? true : false`**
>>
>## What does false represent?
>
>False represent a falsy value and can be used to check some condition example:
>>**`if age = 18 ? false : true`**
>>
>## What does nil represent?
>
>Nil represent the lack of value or empty or null it can be used to check if something is empty example : <br>
>>**`number = 1`** <br>
>Convert number into a string to check if empty
>>**`number.to_s`**
>>**`number.empty?`**
> should return false because number is not empty

---
<h1 align = "center">
Ruby Variables
</h1>

>## What is a variable?
>
>A variable is a name for a type of storage you can store any type of data inside the variable. <br> A variable can be named anything and is not representative of the content inside of the variable
>
>## How do you assign a value or an expression to a variable
>
>**`name = "John"` `#String`<br>
>`number = 1`` #Integer`<br>
>`CanProgram = false`** `#Booleans`
>
>## What does the += assignment operator do?
>
>The assignment perform an operation on the original value and reassign this value in this case it add the value so example :
>>**`number = 5` <br>
>>`number = number + 5` <br>`Same as: number += 5`**
>>
>## What does the -= assignment operator do?
>
>Same as above but it subtract instead of add example:
>>**`number = 5` <br>
>>`number -= 5 will result in 0 because we subtract 5 - 5`**
>>
>## What does the *= assignment operator do?
>
>Same as above but multiply instead of subtract
>
>## What does the /= assignment operator do?
>
>Same as above but divide instead of multiply
>
>## What are the variable naming conventions?
>
>You should always give your variable a meaningful name and not **a** for a string per example:
>
>### Bad naming conventions
>>
>>**`a = 1`<br>
>`b = "John"`<br>
>`c = true`<br>**
>
>It mean nothing ! You will be lost after years or month after coming back you won't be able to tell what are those variable and you will need to think about it now if you named your variable like you should
>
>### Good naming convention
>>
>>**`number_integer = 1`<br>
>>`number_float = 1.30`<br>
>>`last_name = "Kuuran"`<br>
>>`can_swim = true`<br>**
>
>**Also you should always name your variable with snake_case if the variable is multiple word that is the ruby way !**
---
<h1 align = "center">
Ruby Input and Output
</h1>

>## What are the two methods we can use to output data to the user’s screen?
>
>We can use **print, puts**
>
>## What is similar between these two output methods?
>
>The similarity between those two methods is the fact that it return nil
>
>## What is different between these two output methods?
>
>puts append the result in a new line which print does not and show the result and the return inline
>
>## What is the method you can use to get input from the user?
>
>You can get the input from the user by using get and if you want to trim separators you can add gets.chomp to remove the new line at the end
>
>## What is at least one difference between the output and input methods?
>
>The difference between the output method print, puts and gets which is a input methods is the fact that gets return the result of the input compared to puts and print which both return nil
---
<h1 align = "center">
Ruby Conditional Logic
</h1>

>## What is a Boolean
>
>A boolean is a type of value that return true or false
>
>## What are "truthy" values?
>
>A truthy value in ruby is everything except nil and false
>
>## Are the following considered true or false: nil, 0, "0", "", 1, [], {} and -1?
>>
>> ### All value are true except nil and false
>>
>>**`nil = false`<br>
`0 = true`<br>
`"0" = true`<br>
`"" = true`<br>
`1 = true`<br>
`[] = true`<br>
`{} = true`<br>
`-1 = true`**
>
>## When do you use elsif ?
>
>We use elsif when you need to check multiple conditional that are true
>
>## When do you use unless ?
>
>You use unless when you want to do the inverse of a if so when you want to execute the code in function evaluate to false
>
>## What do || and && and ! do ?
>
>The ||(OR) &&(AND) (!) Both || && can be used to add more than one condition even if they evaluate the code differently && need to have both expression to be true or it will return false and || need only one of the two to be true
>
>For the ! it will return the opposite example : <br>**!false will return true and !!false will false again because it became true than became false again**
>
>## What is short circuit evaluation ?
>
>Because of how || operator work it will check only the first expression that evaluates to true if that expression is the first to be checked then it will not check the second one and will execute the code
>
>## What is returned by puts("woah") || true ?
>
>It puts the value "woah" and return nil because the first expression is executed first
>
>## What is the ternary operator ?
>
>The ternary operator is a way to write if...else statement if the condition is only two example :
>>**`conditional statement ? execute if true : execute if false`**
>>
>## When should you use a case statement ?
>
>You should use a case statement when your if..else become too complicated and your code get messy at this point consider using case
---
<h1 align = "center">
Ruby Loops
</h1>

>## What is a loop and why it is useful?
>
>A loop is when you don't want to repeat yourself many times to do something <br>
>They are useful to do many action at once !
>
>## What is a loop loop, and how would you use it?
>
>A loop loop so a infinite loop
>You can loop infinite if you don't break and give the break condition !
>Example :
>
>>### **This loop will ask the user if he need help and if he say yes it will stop asking otherwise it will ask again and again** <br>
>>
>>**`help = ""`<br>
>>`loop do`<br>
>>&nbsp;&nbsp;`puts "You need help ?`<br>
>>&nbsp;&nbsp;`help = gets.chomp`<br>
>>&nbsp;&nbsp;`break if help == "yes"`<br>
>>`end`**<br>
>
>## What is a while loop, and how would you use it?
>
>A while loop is a loop that will be executed if the condition stay true and will stop when it become false
>
>>###  **Ask the user if he died if the user input something else than yes he will get asked again until he input yes then the condition will become true** <br>
>>
>>**`while gets.chomp != "yes" do` <br>
>>&nbsp;&nbsp;`puts "You died no ?"`<br>
>>`end`**
>>
>## What is a for loop, and how would you use it?
>
>A for loop is a loop for iterating through a collection of item so per example a array or a range
>
>>### **Countdown will countdown a number given by the user until 0 than the loop will stop and show the message "Done"**
>>
>>**`ask_number = gets.chomp.to_i`<br>
`for i in 1..ask_number do`<br>
&nbsp;&nbsp;&nbsp;&nbsp;`puts ask_number - i`<br>
`end`<br>
`puts "Done"`**
>
>## What is a #times loop, and how would you use it?
>
>A times loop is a loop that can be used to repeat something a number of times
>
>>### **This loop will show the user the number in function of how many times you want the loop to run and return the last value in this case 5**
>>
>>**`5.times do |number|` <br>
>>`puts "The number is #{number}"` <br>
>>`end`**
>
>## What is an until loop, and how would you use it?
>
>Until loop is the inverse of a while loop so the while loop run when the condition is true and become false <br>
>The loop until run when the condition is false and will stop when it became true
>
>>### **Refactoring my while loop with the same logic as my while loop** <br>
>>
>>**`until gets.chomp == "yes" do` <br>
>>&nbsp;&nbsp;&nbsp;&nbsp;`puts "You died no ?"`<br>
>>`end`**
>>
>## What are the #upto and #downto loops, and how would you use them?
>
>The upto and downto loops are useful to loop through a series of numbers
>>**`5.upto(10) {|num| puts "number is #{num}" }` <br>
>>`10.downto(5) {|num| puts "number is #{num} }`**
---
<h1 align = "center">
Ruby Arrays
</h1>

>## What is an array and why is it useful?
>
>An array is a collection of data it can contain all type of object like string, integer, float and even other array which create a nested array and your array become a multidimensional array.<br>
>It is useful to not create hundred of variable which will inevitably happen when the scope of the project will get bigger and bigger.<br>
>It's also more clean and readable to have variable inside the array that you can call
>It's also more easy to manipulate a collection of data than a individual type of data
>
>## What are two ways to create a new empty array?
>>
>>**`new_array = [1,2,3]` <br>
>>`Array.new(0)`<br>
>>`Array.new(initial size, default value)`**
>>
>## What are some ways of accessing the elements in an array?
>
>To access elements in a an array you have many ways an method to do so
>>**`array[0]` #=>Access first element of the array <br>
>>`array[-1]` #=>Access last of the array<br>
>>`array.last(value)` #=> Access last element<br>
>>`array.first(value)` #=>Access first element<br>
>>`array[0][1]` #=> Access first array, second element of that array. Way to access element in a nested array <br>
>>`array.take(3)` #=> Access the first 3 elements and return a new array <br>
>>`array.at(0)` #=> Access the index specified**
>>
>## What are 3 ways to add data to an array?
>
>3 ways to add data to an array are :
>>
>>1. **`array.push(element)`<br>**
>>2. **`array.unshift(element)`<br>**
>>3. **`array << element`**
>>
>## How can you remove elements from an array?
>
>>1. **`array.pop(element)`<br>**
>>2. **`array.shift(element)`<br>**
>>3. **`array.delete_at(index)`<br>**
>>4. **`array.delete(element)`<br>**
>>5. **`#Remove nil array.compact`<br>**
>>6. **`Remove duplicate array.uniq`<br>**
>
---
<h1 align = "center">
Ruby Hashes
</h1>

>## What are the differences between hashes and arrays?
>>
>>### The differences between hashes and arrays is
>>
>>Arrays are dependant on order which int's true for array also hashes use key-values pair to show a value.<br><br>
>>It means if you know the name of your key you can get the value compared to a an array who you need to work with the index order and must be in order.
>>
>## What are keys and values in a hash?
>>
>>**Key and values in hash are the way to name a data type with a Key and the value of this key you will call this key to get the value associated with it**
>>
>## How can you create a new hash?
>>
>>**`new_hash = {}` Which will create an empty hash or
>>`my_hash = Hash.new` Same as above**
>>
>## How can you populate a hash with data?
>>
>>Let's say we create a simple hash for cats:<br>
**`cat = {name: "Whiskers", weight: "5kg"}` <br>**
>>To add a key-value pair:<br> **`cat[:lifespan] = "13-20 (Domesticated)"`**
>>
>## How can you change existing values within a hash?
>>
>>Retaking our example with the hash of cat:<br>
>>**`cat = {name: "Whiskers", weight: "5kg", lifespan: "13-20 (Domesticated)"}`** <br>
>>Changing existing values:<br>
>>**`cat[:name] = "Cleo"`** <br>
>>Will change existing values and return the new one
>>
>## How can you delete existing data from a hash?
>>
>>**`cat = {name: "Cleo", weight: "5kg", lifespan: "13-20 (Domesticated)"}`** <br>
>>Remove a existing data key-values pair:
>>**`cat.delete(:lifespan)`**<br>
>>Will remove lifespan key and values so it will return:<br>
>>**`{:name=>"Cleo", :weight=>"5kg"}`**
>>
>## How can you merge two hashes together?
>>
>>Let's say we have cat hash and weight hash<br>
>>**`cat = {name: "Cinder"}`** <br>
>>**`weight = {weight: "4kg"}`** <br>
>>Merge two hash together<br>
>>**`cat.merge(weight)`**
>>
>## Why is it preferred to use symbols as hash keys?
>>
>>It's preferred to use symbol for hash keys because it's more clean to read and write.<br>
>>You can remove the colon and use it to assign the value instead of using the hash rocket like you should for other type of keys example:
>>
>> ### Rocket Ways
>>
>>**For this one need to use string to create keys**<br>
>>**`cat = {"name" => "Whiskers", "weight" => "5kg", "lifespan" => "13-20"}`**
>>
>> ### Symbol Ways
>>
>>**`cat = {name: "Whiskers", weight: "5kg", lifespan: "13-20"}`**<br>
>>Also symbol can be used for all type of data
---
<h1 align = "center">
Ruby Methods
</h1>

>## How would you create your own method?
>>
>>### To create a method here some example to add two number
>>
>>**`def add(a, b)`<br>
>>`a + b`<br>
>>`end`**
>>
>## How would you call your new method?
>>
>>### Call a method
>>
>>**`def add(a, b)`<br>
>>`a + b`<br>
>>`end`**
>>
>>**`add(5, 2)`** result = 7
>>
>## How do you pass variables to your method?
>>
>>### Make a methods for greeting someone and pass it the local variable
>>
>>### Example :<br>
>>
>>**`def greet(name)`** <br>
>>**`"hello, " + name + " how are you ?`** <br>
>>**`end`** <br>
>>
>>**`greet "John"`** <br> #Parentheses not necessary
>>
>## How do you define default parameters for your method?
>>
>>**You give your local variable declared in the scope of your method a default value !**
>>
>>### Example
>>
>>**`def greet(name = "Bob")`** <br>
>>**`"hello, " + name + " how are you ?`** <br>
>>**`end`** <br>
>>
>>**`greet`**
>>
>## What is the difference between an explicit return and an implicit return?
>>
>>### The difference between an explicit return and an implicit return is the fact that in ruby the last line in a method get returned without the keyword return so you shouldn't use explicit return unless you want to stop your program for a certain reason like a error
>>
>>### Example
>>
>>#### Explicit return: <br>
>>
>>**1. Need the keyword return to be used** <br>
>>**2. Will stop the methods after being used** <br>
>>**3. Can be useful to stop the program if the data is not correct to your expectation** <br>
>>
>>#### Implicit return: <br>
>>
>>**1. Implicit return is used at the last line of the method without needing to used the keyword return like in javascript per example !** <br>
>>**2. Will always return the last line so if this line is a puts will return nil for the value so if that not the desired behavior need to call the variable that you want the value of** <br>
>>
>## What is the difference between puts and return?
>>
>>### Difference
>>
>>#### puts
>>
>>**1. print on the screen** <br>
>>**2. return nil always** <br>
>>**3. print the content always by making a new line between each new content**
>>
>>#### return
>>
>>**1. return the value** <br>
>>**2. does not print the output on the screen**
>>
>## How do you chain multiple methods together?
>>
>>### By using the object.methods you can call many methods together let's say you want to know the length and transform this length into a string
>>
>>**`"teststring".length.to_s`**
>>
>## Give an example of a valid method name and an invalid method name
>>
>>### Invalid method name
>>
>>**`def 1some_methods_name(optional parameters)`** #Not good because a number at the beginning<br>
>>**`def end(optional parameter)`** end is a keyword protected in ruby cannot be used for methods<br>
>>**`def add?or_not(optional parameter)`** cannot use a ? in between the word only at the end and for predicate methods<br>
>>
>>### Valid method name
>>
>>**`def add(a, b)` <br>
>>`def is_odd?(number)` <br>
>>`def subtract(a, b)`** <br>
>>
>## What is snake case?
>>
>>### A snake_case is the way to write variable names, methods name in ruby you should always use it if you write multiple word variable or names
>>
>>### Example
>>
>>``` ruby
>>`a_big_number = 5516611`
>>```
>>
>>**the syntax for snake_case is the word + underscore and and the second word**
>>
>## What are some of Ruby’s reserved words?
>>
>>1. while
>>2. def
>>3. until
>>4. unless
>>5. end <br>
>>
>>**And many other they are 40 reserved words in total**
>>
>## What do you call a method that returns true or false? What is their naming convention?
>>
>>### A method that should return true or false is called a predicate method
>>
>>### Their naming convention is the fact that at the end of a method name it should have a question mark (?) to show that it's a question and the answer should be true or false
>>
>## What do bang methods do? What is their naming convention?
>>
>>### Bang method change the original object so it change self
>>
>>### A bang method should always have a ! at the end like per example the normal:<br>
>>
>>**`method normal object.upcase and the bang method object.upcase!`**
>>
---
<h1 align = "center">
Ruby Debugging
</h1>

>## What is a stack trace?
>>
>>### A stack trace is multiple line that show error, show the call stack of methods, other type of information like the line that the error is
>>
>## What is generally the most useful line in a stack trace?
>>
>> ### The first line show the error and is the is the most important line to check first
>>
>## What are the two things you can learn from the first line of a stack trace?
>>
>> ### The error and explanation of the error and the line where the error was found
>>
>## How do puts and Pry help you in the debugging process?
>>
>>### puts and pry help to check the value of the variable and understand how the program work and if there is a problem of logic and not a stack trace
>>
>## What should you use instead of puts for nil values?
>>
>>### Should use p because puts show a blank in the irb or when you try to debug with puts will puts a blank line instead of the value needed to debug which can be confusing
>>
>## Where should you start with debugging if you encounter a runtime error?
>>
>>### Should look at the stack trace to see the line where the error occurred and the explanation of the error
>>
>## Where should you start with debugging if your program runs but does not work the way you expect?
>>
>>### You can debug with puts, p if your program is pretty simple otherwise use pry-byebug to test more in depth and see what is wrong with your logic to fix the logic of the program

---
<h1 align = "center">
Ruby Basic Enumerable Methods
</h1>

>## What does the #each method do? What does it return?
>>
>>### The each method iterate through a collection of object and return the original object
>>
>## What does the #each_with_index method do?
>>
>>### Same as the each method instead it take two arguments instead of one the index and the object
>>
>## What does the #map method do?
>>
>>### Iterate through a collection of object and transform those object and return a new array with the transformed item
>>
>>
>>### Example
>>
>>``` ruby
>>irb(main):001> arr = [1,2,3]
>>=> [1, 2, 3]
>>irb(main):002> arr.map {|num| num*2}
>>=> [2, 4, 6]
>>
>## What does the #select method do?
>>
>>### Iterate through a collection of object and select the object you want and return it in a new array
>>
>>### Example
>>
>>``` ruby
>>irb(main):001> arr = [1,2,3]
>>=> [1, 2, 3]
>>irb(main):002> arr.select {|num| num > 2}
>>=> [3]
>>
>## What does the #reduce method do?
>>
>>### Iterate trough a collection of object and reduce those elements to return only one object
>>
>>### Example
>>
>>``` ruby
>>irb(main):006> arr = [1,2,3]
>>=> [1, 2, 3]
>>irb(main):007> arr.reduce {|a, v| a + v}
>>=> 6
>>
>## When should you use do...end around a code block versus {...}?
>>
>>### Should use a do...end when the logic need multi line block compared to {...} which is a one line block
>>
>## Why should you avoid using the bang methods of enumerables?
>>
>>### You should avoid bang method because they mutate the caller and modify the original object which we don't want and can have behavior that can make the code more difficult to debug ! And understand

<h1 align = "center">
Ruby Predicate Enumerable Methods
</h1>

>## Why is there a question mark after some method names?
>
>>### Because they are predicate method which are question and need to have the answer of true or false
>
>## What does the #include? method do?
>
>>### The include method check if the value exist inside the hash or array
>
>## What does the #any? method do?
>
>>### Check if any of the element matches the condition of the block and will return true if that the case otherwise false
>
>## What does the #all? method do?
>
>>### Check if all of the elements matches the condition of the block if that the case return true otherwise if only certain element are true return false
>
>## What does the #none? method do?
>
>>### none? is the inverse of all? it check if there are no elements that matches the condition and if that the case it return true else false

---
