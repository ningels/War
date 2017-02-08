require_relative 'card.rb'
class Deck

   attr_accessor :cards

   def initialize

     @cards = []
     puts "in deck.rb initialize"

      suit_array = ["Heart", "Club", "Spade", "Diamond"]
      suit_array.each do |x|
        count = 0
        13.times do
          face_array = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King", "Ace"]
          value_array = [ "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"]
          @cards << Card.new(x, face_array[count], value_array[count])
#  puts "CARD: #{x} #{face_array[count]} #{value_array[count]}"
#puts "cards new in deck.rb #{@cards}.inspect"
          count += 1
#         puts "count #{count}"
        end
     end
   end
end
