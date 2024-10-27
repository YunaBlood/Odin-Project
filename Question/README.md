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
>>**`number = 1 number.empty?`** <br>
>
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
>>### The differences between hashes and arrays is :
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
