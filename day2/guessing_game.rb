number = rand(10)+1

puts "Guess my number between 1-10"
print "> "
guess = gets.to_i 
#parentheses are optional in ruby, only do it if there's more than one argument
#puts guess.inspect - use this
#.inspect tells us the true nature of the object we're printing out

if guess == number
  puts("You are correct")
else
  puts "You are not correct. The answer was #{number}."
end