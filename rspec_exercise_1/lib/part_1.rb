def average(num1, num2)
  return (num1 + num2) / 2.0
end

def average_array(array)
  sum = 0
  items = array.length
  (0...array.length).each do |idx|
    sum += array[idx]
  end
  return sum / items.to_f
end

def repeat(string, num)
  return string * num
end

def yell(string)
  return string.upcase + '!'
end

def alternating_case(string)
  yelled = string.split(' ')
  yelled.each_with_index do |el, idx|
    if idx % 2 == 0
      yelled[idx] = el.upcase
    else
      yelled[idx] = el.downcase
    end
  end
  return yelled.join(' ')
end