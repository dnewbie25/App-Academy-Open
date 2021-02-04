def hipsterfy(word)
  vowels = 'aeiou'
  idx = word.length - 1
  while idx >= 0
    if vowels.include?(word[idx])
      word[idx] = ''
      return word 
    end
    idx -= 1
  end
  return word
end

def vowel_counts(string)
  vowels = 'aeiou'
  hash = Hash.new(0)

  string.each_char do |char|
    if vowels.include?(char.downcase) 
      hash[char.downcase] += 1
    end
  end
  return hash
end

def caesar_cipher(message, num)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  ciphered = []

  message.each_char do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      ciphered << alphabet[(index + num) % 26]
    else
      ciphered << char 
    end
  end
  return ciphered.join('')
end