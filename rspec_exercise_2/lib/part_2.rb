def palindrome?(str)
  reversed = ''
  i = str.length - 1
  while i >= 0
    reversed += str[i]
    i-=1
  end
  if reversed == str 
    return true 
  else 
    return false  
  end
end

def substrings(str)
  arr = []
  str.each_char.with_index do |el, idx|
    arr << el  
    while idx < str.length - 1
      arr << arr[-1] + str[idx+1]
      idx+=1
    end
  end
  return arr
end

def palindrome_substrings(str)
  arr = substrings(str)
  palin = []
  arr.each do |subs|
    if palindrome?(subs) && subs.length > 1
      palin << subs 
    end
  end
  return palin
end