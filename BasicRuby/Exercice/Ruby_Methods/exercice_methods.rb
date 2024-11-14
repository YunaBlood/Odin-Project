#Exercises
#1. Write a program that prints a greeting message. This program should contain a method called greeting that takes a name as its parameter and returns a string.

  #Solution
  def greeting(name)
    #return nil but print the value of name
    puts name
    #Return the last line implicit return otherwise will return nil because puts
    name
  end

greeting "Bob"

#2. What do the following expressions evaluate to? That is, what value does each expression return?
  # Solution
  1. x = 2 #Return 2

  2. puts x = 2 #return nil

  3. p name = "Joe" #return string "Joe" p return the value passed to it compared to puts which return nil

  4. four = "four" #return a string "four"

  5. print something = "nothing" #return nil inline like puts print return always nil !


#3. Write a program that includes a method called multiply that takes two arguments and returns the product of the two numbers.
  # Solution
  #Adding complexity !
  #To show my understanding of the subject
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def division(a ,b)
    a / b
  end

  def multiply(a, b)
    a * b
  end

  #First part add:
  #division 10, 2 = 5
  #multiply 1.50 * 50 = 75
  #add 5 + 75 = 80

  #Second part subtract:
  #add 50 + 90 = 140
  #multiply 65 * 90 = 5850
  #subtract 140 - 5850 = −5710

  #Last part multiply:
  #80 * −5710 = −456800
  multiply(add(division(10, 2), multiply(1.50, 50)), subtract((add(50, 90)), multiply(65, 90))) #Just to show i understand
  multiply(10, 5) #For the solution
#4. What will the following code print to the screen?

  def scream(words)
    words = words + "!!!!"
    #Empty return will return nil
    return
    #Bellow this line is never reached or never read because of return
    puts words
  end

  scream("Yippeee")
# Solution
# Will print nothing to the screen because it return before the puts words
# Value will be nil because empty return

#5. 1) Edit the method definition in exercise #4 so that it does print words on the screen. 2) What does it return now?
  # Solution
  def scream(words)
    words = words + "!!!!"
    puts words #Return nil
  end

  scream("Yippeee")
  #1) It does print words on the screen now that i removed the empty return
  #2)It still return nil because the last line of the methods is a puts should call words at the end to return the value

#6. What does the following error message tell you?

# ArgumentError: wrong number of arguments (1 for 2)
#   from (irb):1:in `calculate_product'
#   from (irb):4
#   from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'

  # Solution
  # Easy it lack an argument the calculate_product methods expected 2 but only received one
  # Should give the second argument or if the argument is not necessary to the calculate_product method can remove it to the parameters to resolve the error
#
