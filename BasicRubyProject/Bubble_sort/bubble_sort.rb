#Objective: Iterate over the array; if an element is bigger than the one on the right, swap the two values, and iterate until the array is sorted.

#PSEUDOCODE:

# 1. Create a loop to continue until the array is sorted.
# 2. Set the sorted flag to false (because we haven't completed sorting yet).
# 3. Iterate through the array using each_with_index to get the index and value.
# 4. Compare the current element (array[index]) with the next element (array[index + 1]).
# 5. If the current element is greater than the next, swap them directly:
#    - array[index], array[index + 1] = array[index + 1], array[index]
#    - Set sorted to true (because we performed a swap).
# 6. After each iteration, ignore the last element by not checking it in the next pass.
# 7. Exit the loop when no swaps are made, meaning the array is sorted.

# Return the sorted array.
def bubble_sort(array)

original_array = array.map(&:clone)
sorted_array = array
num = array.length
iteration = 0

    loop do
        #Initialize sorted
        iteration += 1
        sorted = false
        #Iterate trough the array
        sorted_array.each_with_index do |number, index|
            #Check if the index is less than the max length of the array
            if index < num - 1
                #Compare the first and second number and if the left number is bigger then enter the condition else skip it
                if sorted_array[index] > sorted_array[index+1]
                    #Swap the two value
                    sorted_array[index], sorted_array[index + 1] = sorted_array[index + 1], sorted_array[index]
                    #While sorting assign the value true
                    #When it iterate once it will go outside the loop and inside loop which will become false again until and true again until no number are needing to be sorted
                    sorted = true
                end
            end
        end
        #Break unless sorted is equal to false
    break unless sorted
    end
    #Show number of iteration to sort the array
    puts "Number of iteration : #{iteration}"
    puts "Original Array #{original_array}"
    puts "Array sorted: #{sorted_array}"
    #Return the array
    array
end

bubble_sort([4,3,78,2,0,2])

