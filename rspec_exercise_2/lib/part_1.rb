def partition(arr, num)
  two_D_arr = Array.new(2) {Array.new}

  arr.each do |el|
    if el < num 
      two_D_arr[0] << el  
    else 
      two_D_arr[1] << el  
    end
  end
  return two_D_arr
end

def merge(hash1, hash2)
  return {**hash1, **hash2}
end

def censor(sentence, arr)
  vowels = 'aeiou'
  sentence = sentence.split(' ')
  censored = []
  sentence.each do |word|
    if arr.include?(word.downcase)
      i = 0
      while i < word.length 
        if vowels.include?(word.downcase[i])
          word[i] = '*'
        end
        i+=1
      end
      censored << word
    else
      censored << word
    end
  end
  return censored.join(' ')
end

def power_of_two?(number)
  if number == 1
    return true 
  end
  (1...number).each do |num|
    if 2 ** num == number 
      return true 
    end
  end
  return false
end