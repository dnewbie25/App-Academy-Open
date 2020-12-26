# Write a method, swapper(arr, idx_1, idx_2), that accepts an array and two indices as args.
# The method should swap the elements at the given indices and return the array.
# The method should modify the existing array and not create a new array.

def swapper(arr, idx_1, idx_2)
=begin
  # define the start and finish indexes
  start = 0
  finish = 0
  if idx_1 > idx_2
    finish = idx_1
    start = idx_2
  else
    finish = idx_2
    start = idx_1
  end

  # swap the elements
  (start..finish).each do |i|
    if i < finish - 1
      temp = arr[i]
      arr[i] = arr[i+1]
      arr[i+1] = temp
    end
  end
  return arr
=end
# explain with the second one, index 3,1
  temp = arr[idx_1] # d, index 3, array is the same [a,b,c,d]
  arr[idx_1] = arr[idx_2] # index 3, which is d is replaced with ele at index 1, which is b [a,b,c,b]
  arr[idx_2] = temp # index 1, which now is b is changed with the temp, which is d, [a,d,c,b]
  return arr
=begin 
  now with the first one, index 0,2
  [a,b,c,d]

  temp = arr[idx_1] # a, index 0, array is the same [a,b,c,d]
  arr[idx_1] = arr[idx_2] # index 0, which is a is replaced with ele at index 2, which is c [c,b,c,d]
  arr[idx_2] = temp # index 2, which now is a is changed with the temp, which is a [c,b,a,d]
  return arr
=end
end

p swapper(["a", "b", "c", "d"], 0, 2)               # => ["c", "b", "a", "d"]
p swapper(["a", "b", "c", "d",'f','g'], 5, 1)               # => ["a", "d", "c", "b"] - [a,g,c,d,f,b]
p swapper(["canal", "broadway", "madison"], 1, 0)   # => ["broadway", "canal", "madison"]
