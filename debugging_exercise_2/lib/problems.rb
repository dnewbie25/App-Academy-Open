# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def largest_prime_factor(num)
  divisor = 1 
  (1..num).each do |value|
    if num % value == 0 && prime?(value) && value > divisor
      divisor = value
    end
  end
  return divisor
end

def prime?(num)
  if num < 2
    return false 
  end

  (2...num).each do |factor|
    if num % factor == 0 
      return false  
    end
  end

  return true
end

def unique_chars?(str)
  i = 0
  while i < str.length
    j = i+1
    while j < str.length 
      if str[i] == str[j]
        return false  
      end 
      j+=1
    end
    i+=1
  end
  return true
end
require 'byebug'
def dupe_indices(arr)
  hash = {}
  arr.each_with_index do |el, idx|
    i = idx+1
    while i < arr.length 
      if el == arr[i] && !hash.has_key?(el)
        hash[el] = [idx] 
        hash[el] << i
      elsif el == arr[i] && hash.has_key?(el) && !hash[el].include?(i)
        hash[el] << i
      end
      i+=1
    end
  end
  return hash
end

def ana_array(arr_1, arr_2)
  if arr_1.length != arr_2.length  
    return false  
  end
  i = 0
  while i < arr_1.length
    if arr_2.include?(arr_1[i]) && arr_1.include?(arr_2[i])
      i+=1
    else
      return false  
    end

  end
  return true
end
