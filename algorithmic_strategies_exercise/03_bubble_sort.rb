# Reimplement the bubble sort outlined in the preceding lecture.
# The bubble_sort method should accept an array of numbers and arrange the elements in increasing order.
# The method should return the array.
# Do not use the built-in Array#sort

def bubble_sort(arr)
  is_sorted = false
  while !is_sorted
    is_sorted = true
    arr.each_with_index do |el, idx|
      if idx < arr.length - 1
        if el > arr[idx+1]
          temp = el
          arr[idx] = arr[idx + 1]
          arr[idx + 1] = temp
          is_sorted = false
        end
      end
    end
  end
  return arr
end

p bubble_sort([2, 8, 5, 2, 6])      # => [2, 2, 5, 6, 8]
p bubble_sort([10, 8, 7, 1, 2, 3])  # => [1, 2, 3, 7, 8, 10]