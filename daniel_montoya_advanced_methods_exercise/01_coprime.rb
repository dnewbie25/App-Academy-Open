# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  # list of numbers from 0 to the two digits 
  # list of divisors of both numbers
    # if there's a divisor different than one, return false
    # else return true

  list1 = list_of_divisors(num_1)
  list2 = list_of_divisors(num_2)

  list1.each do |ele1|
    list2.each do |ele2|
      if ele2 == ele1
        return false # the numbers share at least 1 divisor different than one
      end
    end
  end
  return true # if no divisors are shared between numbers, it means 1 is their only common divisor
  
end

def list_of_divisors(num) # returns an array with all the divisors different than one
  arr = []
  (2...num).each_with_index do |ele, idx|
    if num % ele == 0 && idx < num - 1
      arr << ele # that number is prime
    elsif idx == num-1
      break
    end
  end
  return arr
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false 

