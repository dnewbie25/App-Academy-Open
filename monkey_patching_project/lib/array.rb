# Monkey-Patch Ruby's existing Array class to add your own custom methods

class Array
  def span 
    if self.empty? 
      return nil 
    else 
      return self.max - self.min
    end
  end

  def average 
    if self.empty? 
      return nil 
    else 
      return self.sum / self.length.to_f
    end
  end

  def median 
    if self.empty?
      return nil 
    elsif self.length % 2 == 0
      length = self.length
      middle_sum = [self.sort[length/2-1], self.sort[length/2]].sum
      return middle_sum/2.0
    else
      length = self.length
      return self.sort[length/2]
    end
  end

  def counts
    hash = Hash.new(0)
    self.each {|el| hash[el] += 1}
    return hash
  end

  def my_count(value)
    count = 0
    self.each {|el| count += 1 if el == value}
    return count
  end

  def my_index(value)
    self.each_with_index {|el, idx| return idx if el == value}
    return nil
  end

  def my_uniq
    arr = []
    self.each {|el| arr << el if !arr.include?(el)}
    return arr
  end
 
  def my_transpose
    arr = Array.new(self.length) {Array.new()}

    self.each_with_index do |array, outer_idx|
      self.each do |el1|
        el1.each_with_index do |el2, inner_idx|
          if outer_idx == inner_idx 
            arr[outer_idx] << el2
          end
        end
      end
    end
    return arr
  end
  
end
