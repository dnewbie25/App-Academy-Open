require 'byebug'
class Code
  attr_reader :pegs

  POSSIBLE_PEGS = {
    "R" => :red,
    "G" => :green,
    "B" => :blue,
    "Y" => :yellow
  }

  def self.valid_pegs?(arr)
    arr.each do |el| 
      if !(POSSIBLE_PEGS.has_key?(el.downcase) || POSSIBLE_PEGS.has_key?(el.upcase))
        return false
      end
    end
    return true
  end

  def initialize(pegs)
    if Code.valid_pegs?(pegs)
      @pegs = pegs.map {|el| el.upcase}
    else 
      raise "Invalid pegs"
    end
  end

  def self.random(length)
    array = []
    length.times do 
      array.push(POSSIBLE_PEGS.keys[rand(POSSIBLE_PEGS.keys.length)])
    end
    return Code.new(array)
  end

  def self.from_string(pegs_string)
    code_instance = Code.new(pegs_string.split(''))
  end

  def [](index)
    @pegs[index]
  end

  def length
    @pegs.length
  end

  def num_exact_matches(instance)
    corrects = 0
    @pegs.each_with_index do |peg, idx|
      instance.pegs.each_with_index do |guess, idx2|
        if peg == guess && idx == idx2
          corrects += 1
        end
      end
    end
    return corrects
  end

  def num_near_matches(instance)
    corrects = 0
    (0...@pegs.length).each do |idx|
      if self[idx] != instance[idx] && self.pegs.include?(instance[idx])
        corrects += 1
      end
    end
    
    return corrects
  end

  def ==(instance)
    self.pegs == instance.pegs
  end
end
