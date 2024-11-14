def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

add(20, 45)
# => 65
# return 65

subtract(80, 10)
# => 70
# return 70

def multiply(num1, num2)
  num1 * num2
end

#How it work you do the add and subtract operation first !
#So add 20 + 45 = 65, subtract 80 - 10 = 70
#Which the argument become
#multiply(65 * 70) which is = 4550
multiply(add(20, 45), subtract(80, 10))
#=> 4550
# return 4550

#How it work you do the subtract first so it give you 70
#then you take both argument for multiply and do the operation
#so 14 for subtract and 35 for add you then do 14 * 35 = 490
#then you finish by adding 490 + 70 = 560
add(subtract(80, 10), multiply(subtract(20, 6), add(30, 5)))
#=> 560
