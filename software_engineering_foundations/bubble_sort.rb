# Classic bubble sort algorithm exercise

array = ['a','z','b','a','d','f','e'] # => ['a','a','b','d','e','f','z']

=begin 
temporary_array = array[0]

array[0] = array[1]

array[1] = temporary_array
=end

# an easy way would be array[0], array[1] = array[1], array[0]

p array

# now all you have to do it to loop over the array 
# if the idx[1] > idx[0] then swap them and count it with a temporary swap varibale
# at the end, if the temporary swap variable was not changed during the execution, then the array is sorted

def bubble_sort(arr)
  sorted = false

  while !sorted # true, if it remains as false, then the bubble sort is finished
    sorted = true # if it remains true is because a swap
    
    count = 0
    while count < arr.length - 1
      if arr[count] > arr[count + 1]
        #first_ele = arr[count + 1]
        #second_ele = arr[count]
        #first_ele = second_ele
        #second_ele = first_ele
        temporary_element = arr[count] # saves a copy of the current array element
        arr[count] = arr[count + 1] # the current index is replaced for the next one
        arr[count + 1] = temporary_element # the index + 1 element is replaced for the copy we have of the element previous to it
        sorted = false # is changed to false because the while loop is !(false) == true
        p arr
      end
      count += 1
    end
    
  end
  return arr
end

p bubble_sort(array)

