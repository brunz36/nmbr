random_number = Random.rand(1..100)

def user_guess(prompt)
  print prompt + ": "
  gets.chomp.to_i
end

guess_array = []

def guess_array_method(guess_array, guess)
  guess_array.push(guess)
end


loop do
  guess = user_guess("Please enter a number between 1 and 100")
  guess_array_method(guess_array, guess)

  if guess_array.length == 5
    puts "Sorry but you've ran out of guesses, the correct number was #{random_number}."
    break
  end

  if guess == random_number
    puts "Correct, then #{random_number} is the same as #{guess}."
    break
  elsif guess < random_number
    puts "Your number #{guess}, is less than the number you're searching for."
  elsif guess > random_number
    puts "Your number #{guess}, is more than the number you're searching for."
  end
end
