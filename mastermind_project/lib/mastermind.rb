require_relative "code"

class Mastermind
  def initialize(length)
    @secret_code = Code.random(length)
  end

  def print_matches(instance)
    puts @secret_code.num_exact_matches(instance)
    puts @secret_code.num_near_matches(instance)
  end

  def ask_user_for_guess
    puts "Enter a code"
    input = gets.chomp
    user_guess = Code.from_string(input)
    self.print_matches(user_guess)
    @secret_code.pegs == user_guess.pegs
  end
end
