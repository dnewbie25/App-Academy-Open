class Dog
  def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods
  end
  # Getter methods
  def name 
    @name 
  end

  def breed 
    @breed
  end

  def age 
    @age 
  end

  # Setter methods
  def age=(number)
    @age = number
  end

  def bark 
    if @age <= 3 
      return @bark.downcase
    else
      return @bark.upcase
    end
  end

  def favorite_foods 
    @favorite_foods
  end

  def favorite_food?(food)
    @favorite_foods.each do |item|
      if item.downcase == food.downcase 
        return true 
      end
    end
    return false
  end
end
