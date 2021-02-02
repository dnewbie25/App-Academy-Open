# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  newstr = ''
  i = 0 
  while i < str.length 
    char = str[i]
    char_count = 1

    while char == str[i+1]
      char_count+=1
      i+=1
    end
    
    if char_count > 1 
      newstr += char_count.to_s + char
    else
      newstr += char
    end

    i+=1
  end
  return newstr
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
