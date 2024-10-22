<h1 align = "center">
Ruby Basic Data Types
</h1>

---

> ## What are the basic arithmetic operators you can use on numbers?
>You can use those different arithmetic operators : **+ - / * %**
>## What’s the difference between an integer and a float?
> An integer cannot have decimal and are always a whole number example :<br> **Float : 3.50 <br> Integer : 3**
>## What method would you use to convert a float to an integer?
>number = 3.50 <br> **number.to_i with snake_case #=> 3**
>## What method would you use to convert an integer to a float?
>number = 3 <br> **number.to_f with snake_case #=> 3.00**
>## What is a string?
>A string is a chain of character that can be something like "Hello"
>## What are the differences between single and double quotes?
>The difference between single and double quotes is their usage and limitation **the single quotes cannot escape character and interpolate string.**
>## What is string interpolation?
>String interpolation is passing a variable inside a chain of character example: <br> a = "Hello" <br> **"#{a} User !" <br>Will have the result Hello User !**
>## How do you concatenate strings?
>You use the + between two string to add them example: <br> **"Hello" + "World"**
>## What method would you use to change all the characters in your string to upper case?
>string = "hello" i would use **string.upcase**
>## What method would you use to split up strings into arrays?
>The method to split string into a array is **.split** example: <br> **"Hello World".split will split into two word array #=> ["hello", "world"] or "hello".split("") #=> ["h", "e", "l", "l", "o"]**
>## What are escape characters?
>Escape character are character that ruby doesn't recognize like code and will not interpret like so they can be used to return to a new line and place other type of character inside a chain of character
>## How do you access a specific character or substring?
>You can access specific character or substring by calling the index of the word example :<br> **"Hello"[0] will return H**
>## How do you convert other data types into strings?
>number = 1 you can convert by using **number.to_s snake_case #=> "1"**
>## What is a symbol?
>A symbol is a string that should not be used to show data to the user or be changed it's similar to a constant but different at the same time because they get stored only once compared to the other type that can be stored multiple times even if the value is the same
>## How do you create a symbol?
>The syntax for creating a symbol is a colon at first and then the name of your symbol example: <br> **:my_symbol**
>## What’s the difference between a symbol and a string?
>The difference between a symbol is a string is first the fact that a string do get stored multiple times compare to the symbol who get stored in the memory only once and also the symbol should not change in value compared to the string which can be reassigned
>## What does true represent?
>True represent a truthy value and can be used to check some condition example: <br> **if age = 18 ? true : false**
>## What does false represent?
>False represent a falsy value and can be used to check some condition example: <br> **if age = 18 ? false : true**
>## What does nil represent?
>Nil represent the lack of value or empty or null it can be used to check if something is empty example : <br> number = 1 **number.empty?** should return false because number is not empty

---