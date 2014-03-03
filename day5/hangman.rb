filename = ARGV.shift

# if ARGV[0] == ""
#   puts "You must enter a file"
#   abort
# end
word_bank = []
dictionary = File.open(filename, "r")
dictionary.each do |words|
  word_bank << words
end

word = word_bank.sample
blanks = "_ " * (word.length - 1)
word = (word.split("")).join(" ")

puts "This is Hangman! Guess!"
guess_number = 6
puts "#{guess_number} guesses remaining"
puts 
puts blanks.strip
print "> "
guess = gets.strip


guesses = []


while blanks.strip != word.strip
  guesses << guess
  no = 0
  0.upto(word.length) do |n|
    if guess == word[n]
      blanks[n] = guess
    else
      no = no + 1
    end
  end
  if no == word.length + 1
    guess_number = guess_number - 1
  end
  if guess_number == 0
    puts
    puts "You lose, the word was:"
    puts word.strip
    abort
  end
  if blanks.strip == word.strip
    puts blanks.strip
    puts "You win"
    abort
  end
  puts "#{guess_number} guesses remaining"
  puts (guesses.sort).join(" ")
  puts blanks.strip
  print "> "
  guess = gets.strip
end

