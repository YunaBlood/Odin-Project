# Let’s get some practice reading documentation. You’ll feel just like a real programmer! What do you think the methods #clear, #insert, #sample, #shuffle, and #uniq do? Look these methods up in the Array class documentation. Were you close?

#Clear : I think will clear the array maybe ? I was right ! WARNING !!! change the original array
array = %W(Luke Valentin Marcel)
array.clear()
# puts array
#Insert: I’m thinking it will insert an array or a new elements ? Was right even if i didn't know about all of the usage of the methods
array.insert(0,"foo",1,2,3,4,5)
# puts array
#Sample : That one I do know if I remember right ! It will take a random element in the array | And i was right because that one i did know about !
# puts array.sample
#Shuffle : Maybe rearange the order In random ? Was right again !
# puts array.shuffle
#uniq : I do know ! It will remove and return a new array with only unique elements example : [1,2,3,4,5,5] if you do array.uniq? You will get [1,2,3,4,5] the 5 that was duplicated is gone but not in the original array
#So no duplicate
puts array.uniq
puts array
