number = rand(10)

player_guess = number + 1

while player_guess != number
  puts 'Guess number: '
  player_guess = gets
  player_guess = player_guess.to_i

  puts 'Too high.' if player_guess > number
  puts 'Too low.' if player_guess < number

end

puts 'Correct!'
