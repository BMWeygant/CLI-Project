class Card
attr_accessor :name, :program, :ovr, :position, :price

PLAYER_CARDS = []

  def initialize(card_hash)
    card_hash.each do |key, value|
      self.send("#{key}=", value)
    end
    save
  end

  def self.all
    PLAYER_CARDS
  end

  def save
    PLAYER_CARDS << self
  end
#binding.pry

all
end
