random_number = Random.rand(1...11)

def user_guess(prompt)
  print prompt + ": "
  gets.chomp.to_i
end


guess = user_guess("Please enter a number between 1 and 10")

loop do
  if guess == random_number
    puts "Correct, then #{random_number} is the same as #{guess}."
  elsif guess < random_number
    puts "Your number #{guess}, is less than the number you're searching for.#{random_number}"
  elsif guess > random_number
    puts "Your number #{guess}, is more than the number you're searching for.#{random_number}"
  end
end
