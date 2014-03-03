class Hangman
  attr_accessor :blanks, :word, :guesses
  
  def initialize(filename)
    dictionary = File.open(filename, "r")
    word_bank = dictionary.to_a
    word = word_bank.sample
    @blanks = "_ " * (word.length - 1)
    @word = (word.split("")).join(" ")
    @guess_number = 6
    @guesses = []
  end
  
  def play
    print_welcome_message
    correct_guess?
  end
  
  def correct_guess?
    while blanks.strip != word.strip
      guess = get_guess
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
        @guess_number = @guess_number - 1
      end
      if @guess_number == 0
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
    end
  end
  def get_guess
    puts "#{@guess_number} guesses remaining"
    puts
    puts (guesses.sort).join(" ")
    puts 
    puts blanks.strip
    print "> "
    gets.strip
  end
  def print_welcome_message
    puts "This is Hangman! Guess!"
  end
end
  