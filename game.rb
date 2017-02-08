require_relative 'deck.rb'
#require_relative 'card.rb

class Game
  attr_accessor :mydeck, :yourdeck, :mywinnings, :yourwinnings


  def initialize
    puts "initialize"
    self.mydeck = Deck.new
    self.yourdeck = Deck.new
    self.mywinnings = []
    self.yourwinnings = []
# choice a method that gets from the screen, not here
#    puts mydeck.inspect
#    puts yourdeck.inspect
  end

  def play
    puts "play"
    shuffle_cards

    have_cards = true
    while have_cards == true
#      puts "in while before play next card, my:#{mydeck.cards.length}  you:#{yourdeck.cards.length}"
      play_next_card
      if mydeck.cards.length <= 0 || yourdeck.cards.length <= 0
         have_cards = false
      end
    end

    puts "Game Over"
    puts "mywinnings  #{mywinnings.length}, rounds won #{mywinnings.length/2}"
    puts "yourwinnings  #{yourwinnings.length}, rounds won #{yourwinnings.length/2}"

    # if prompt.yes?("Would you like to play a game?")
    #   self.choice = prompt.select("Shoot ...", selections)
    #   determine_winner
    # else
    #   end_game
    # end
  end

  def shuffle_cards

    mydeck.cards.shuffle!
#    puts "shuffle_cards, my deck"
#        puts mydeck.inspect
    yourdeck.cards.shuffle!
#    puts "shuffle_cards, your deck"
#         puts yourdeck.inspect

  end

  def play_next_card
    my_card = mydeck.cards.shift
    your_card = yourdeck.cards.shift

    puts "my card #{my_card.inspect}"
    puts "your card #{your_card.inspect}"

    if my_card.value > your_card.value
      mywinnings << my_card
      mywinnings << your_card
      puts "I won  #{my_card.value} > #{your_card.value} "
    elsif your_card.value > my_card.value
      puts "You won  #{my_card.value} < #{your_card.value} "
      yourwinnings << your_card
      yourwinnings << my_card

    else
      puts "do nothing my card  #{my_card.value} equals your card #{your_card.value} "
    end
  end
end


puts "in game.rb and about to do game.new"
Game.new.play
