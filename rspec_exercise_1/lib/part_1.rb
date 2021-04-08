def average(x, y)
  return (x + y)/2.0
end

def average_array(arr)
  return arr.sum / (arr.length).to_f
end

def repeat(str, n)
  return str * n
end

def yell(str)
  return str.upcase + '!'
end

def alternating_case(str)
  new_str = str.split.map.with_index do |el, idx|
    if idx % 2 == 0 
      el.upcase 
    else 
      el.downcase  
    end
  end
  return new_str.join(' ')
end