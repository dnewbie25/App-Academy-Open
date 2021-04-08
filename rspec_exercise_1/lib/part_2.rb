def hipsterfy(word)
  i = word.length - 1
  vowels = 'aeiou'
  while i >= 0 
    i-=1
    if vowels.include?(word[i])
      word[i] = ''
      break 
    end
  end
  return word
end

def vowel_counts(str)
  vowels = 'aeiou'
  hash = Hash.new(0)
  str.each_char do |char|
    if vowels.include?(char.downcase)
      hash[char.downcase] += 1
    end
  end
  return hash
end

def caesar_cipher(message, shift)
  new_message = []
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  message.each_char do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      new_message << (alphabet[(index + shift)%26])
    else
      new_message << char
    end
  end
  return new_message.join('')
end