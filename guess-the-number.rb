puts 'Guess a number between 1 and 10, inclusive.'
userGuess = gets.to_i #not validating against non-numbers here

if not userGuess.between?(1,10)
  puts "#{userGuess} isn\'t between 1 and 10"
  exit
end

randomNumber = rand(1..10)
puts "Random number was #{randomNumber}!"

if (userGuess <=> randomNumber) < 0
  puts 'You guessed too low.'
elsif (userGuess <=> randomNumber) > 0
  puts 'You guessed too high.'
else 
  puts 'You guessed right! Hurrah!'
end
