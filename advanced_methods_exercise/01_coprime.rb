# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  factors_of_num1 = factors(num_1)
  factors_of_num2 = factors(num_2)
  factors_of_num1.each do |factor|
    return false if factors_of_num2.include?(factor)
  end
  return true
end

def factors(num)
  arr = []
  (2...num).each do |factor|
    if num % factor == 0
      arr << factor
    end
  end
  return arr
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false
