class Game
  # attr_reader "random_number", "guess_array"

  def initialize
    @random_number = Random.rand(1..100)
    @guess_array = []

  end

  def user_guess(prompt)
    print prompt + ": "
    gets.chomp.to_i
  end

  def compare_guess_random
    if @guess == @random_number
      puts "Correct, then #{@random_number} is the same as #{@guess}."
      exit
    elsif @guess < @random_number
      puts "Your number #{@guess}, is less than the number you're searching for."
    elsif @guess > @random_number
      puts "Your number #{@guess}, is more than the number you're searching for."
    end
  end

  def guess_array_method(guess_array, guess)
    if @guess_array.include?(guess)
      puts "You do that again and I shall said, NI! NI! NI!"
      return false
    else
      return true
    end
  end

  def stupid_guess
    if @guess_array.last < @random_number && @guess < @guess_array.last
      puts "I fart in your general direction."
    elsif @guess_array.last > @random_number && @guess > @guess_array.last
      puts "I fart in your general direction."
    end
  end

  def play
    loop do
      @guess = user_guess("Please enter a number between 1 and 100")
      if guess_array_method(@guess_array, @guess)
        @guess_array << @guess
      else
        next
      end

      compare_guess_random
      stupid_guess

      if @guess_array.length == 5
        puts "Sorry but you've ran out of guesses, the correct number was #{@random_number}."
        break
      end
    end
  end
end

Game.new.play
