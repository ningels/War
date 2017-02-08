
class Card
  attr_accessor  :suit, :face, :value

  def initialize(suit, face, value)
    @suit = suit
    @face = face
    @value = value.to_i
  end

end
