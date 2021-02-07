class Board
  attr_reader :size

  def initialize(n)
    @grid = Array.new(n, :N) {Array.new(n,:N)}
    @size = n * n
  end

  def [](array)
    row = array[0]
    column = array[1]
    @grid[row][column]
  end

  def []=(position, value)
    row = position[0]
    column = position[1]
    @grid[row][column] = value
  end

  def num_ships
    num_S = 0
    @grid.flatten.each {|el| num_S += 1 if el == :S}
    return num_S
  end

  def attack(position)
    if self[position] == :S 
      self[position] = :H
      puts "You sunk my battleship!"
      return true
    else  
      self[position] = :X
      return false
    end
  end
  
  def place_random_ships
    total_ships = @size * 0.25
    while self.num_ships < total_ships
      row = rand(0...@grid.length)
      col = rand(0...@grid.length)
      position = [row, col]
      self[position] = :S
    end
  end

  def hidden_ships_grid
    hidden_grid = @grid.map do |row|
      row.map do |el|
        if el == :S
          :N 
        else
          el
        end
      end
    end
    return hidden_grid
  end

  def self.print_grid(grid)
    grid.each do |row|
      print row.join(' ')
      puts
    end
  end

  def cheat 
    Board.print_grid(@grid)
  end

  def print 
    Board.print_grid(hidden_ships_grid)
  end
end
