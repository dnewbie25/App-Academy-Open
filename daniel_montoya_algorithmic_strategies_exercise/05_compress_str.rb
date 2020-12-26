# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)
  compressed = ''
  idx = 0

  while idx < str.length
    char = str[idx] # saves the current character
    inner_counter = 0 # count the times the character is repeated
    while char == str[idx] # compare the saved character with the following characters, if they are the same this inner loop activates
      idx += 1 # moves along the next elements of the array, 
      inner_counter += 1
    end
    if inner_counter == 1
      compressed += char
    else
      compressed += inner_counter.to_s + char
    end
  end
  return compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
