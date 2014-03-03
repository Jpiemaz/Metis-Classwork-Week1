require "./deck"

class Game
  def initialize(deck)
    @deck = deck 
  end
  def play
    print_welcome_message
    @deck.play
  end
  
  private
  
  def print_welcome_message
    puts "Welcome to my flashcards app!"
    puts "-" * 28
  end
end
