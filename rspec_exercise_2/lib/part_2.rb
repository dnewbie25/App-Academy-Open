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
      if start == finish
        arr << str[start]
      else
        arr << str[start..finish]
      end
    end
  end
  
  return arr
end