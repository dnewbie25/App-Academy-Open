def select_even_nums(array)
  return array.select {|el| el.even?}
end

def reject_puppies(dogs)
  return dogs.reject {|dog| dog['age'] <= 2}
end

def count_positive_subarrays(array)
  return array.count {|sub_arr| sub_arr.sum > 0}
end

def aba_translate(word)
  vowels = 'aeiou'
  aba_word = ''
  word.each_char do |char|
    if vowels.include?(char)
      aba_word+="#{char}b#{char}"

    else
      aba_word += char  
    end
  end
  
  return aba_word
end

def aba_array(array)
  array = array.map do |el|
    aba_translate(el)
  end
  return array
end