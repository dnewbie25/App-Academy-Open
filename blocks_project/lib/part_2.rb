def all_words_capitalized?(words)
  return words.all? {|word| word == word.capitalize}
end

def no_valid_url?(urls)
  valid_urls = urls.none? do |url|
    url.include?('.com') || url.include?('.net') || url.include?('.io')
  end
  return valid_urls
end

def any_passing_students?(students)
  any_passed = students.any? do |student|
    average = student[:grades].sum / student[:grades].length
    average >= 75
  end
  return any_passed
end