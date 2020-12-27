def average(num1, num2)
  (num1 + num2)/2.0
end

def average_array(arr)
  length = arr.length
  sum = arr.sum
  sum/length.to_f
end

def repeat(str, num)
  str *= num
end

def yell(str)
  str.upcase + '!'
end

def alternating_case(str)
  arr = str.split(' ')
  arr.each_with_index do |word, idx|
    if idx == 0
      arr[idx] = word.upcase
    elsif idx%2 == 0
      arr[idx] = word.upcase
    else
      arr[idx] = word.downcase
    end
  end
  return arr.join(' ')
end