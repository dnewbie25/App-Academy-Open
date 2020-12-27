def partition(arr, n)
  newarr = [[],[]]

  arr.each do |ele|
    if ele >= n
      newarr[1] << ele
    else
      newarr[0] << ele
    end
  end
  return newarr
end

def merge(hash1, hash2)
  merged_hash = {}

  hash1.each do |k1, v1|
    merged_hash[k1] = v1 
    hash2.each do |k2, v2|
      if k1 == k2
        merged_hash[k1] = v2
      else
        merged_hash[k2] = v2
      end
    end
  end
  return merged_hash
end

def censor(sentence, arr)
  vowels = 'aeiouAEIOU'
  words_arr = sentence.split(' ')
  words_arr.each do |word|
    if arr.include?(word.downcase)
      word.each_char.with_index do |letter, idx|
        if vowels.include?(letter)
          word[idx] = '*'
        end
      end
    end
  end
  return words_arr.join(' ')
end

def power_of_two?(num)

  if num == 0
    return false
  end
  while (num != 1)
    if (num % 2 == 0)
      num /= 2
    else
      return false
    end
  end
  return true
end