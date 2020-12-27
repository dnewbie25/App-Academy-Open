def hipsterfy(word)
  vowels = 'aeiou'
  last_vowel_index = nil

  word.each_char.with_index do |char, idx|
    if vowels.include?(char)
      last_vowel_index = idx
    end
  end

  if last_vowel_index != nil
    arr = word.split('')
    arr.delete_at(last_vowel_index)
    return arr.join('')
  else
    return word
  end
end

def vowel_counts(str)
  vowels = 'aeiou'
  vowel_hash = Hash.new(0)

  str.downcase.each_char do |char|
    if vowels.include?(char)
      vowel_hash[char] += 1
    end
  end
  return vowel_hash
end

def caesar_cipher(message, shift)
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  ciphered_word = []
  index = 0
  while index < message.length
    if alphabet.include?(message[index])
      alpha_index = alphabet.index(message[index])
      if alpha_index + shift < message.length - 1
        ciphered_word << alphabet[alpha_index + shift]
      else
        ciphered_word << alphabet[(alpha_index + shift) % 26]
      end
    else
      ciphered_word << message[index]
    end
    index += 1
  end
  return ciphered_word.join('')
end