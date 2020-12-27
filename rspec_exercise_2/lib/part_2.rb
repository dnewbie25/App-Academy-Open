def palindrome?(str)
  array = str.split('')
  array = array.reverse!.join('')
  
  if str == array
    return true
  else
    return false
  end
end

def substrings(str)
  arr = []
  length = str.length
  (0...length).each do |start|
    (start...length).each do |finish|
        arr << str[start..finish]
    end
  end
  
  return arr
end

def palindrome_substrings(str)
  arr = substrings(str)
  newarr = []
  arr.each do |ele|
    if palindrome?(ele) && ele.length > 1
      newarr << ele
    else
      next
    end
  end
  return newarr
end