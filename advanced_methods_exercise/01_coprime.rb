# Write a method, coprime?(num_1, num_2), that accepts two numbers as args.
# The method should return true if the only common divisor between the two numbers is 1.
# The method should return false otherwise. For example coprime?(25, 12) is true because
# 1 is the only number that divides both 25 and 12.

def coprime?(num_1, num_2)
  factors(num_1).each do |factor|
    if factors(num_2).include?(factor)
      return false
    end
  end
  return true
end

def factors(num)
  factors_array = []
  (2..num).each do |factor|
    if num % factor == 0
      factors_array << factor
    end
  end

  return factors_array
end

p coprime?(25, 12)    # => true
p coprime?(7, 11)     # => true
p coprime?(30, 9)     # => false
p coprime?(6, 24)     # => false