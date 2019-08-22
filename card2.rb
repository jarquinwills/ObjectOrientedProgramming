class Card

  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card 
    puts "#{self.rank} of #{self.suit}"
  end
    
  def self.random
    Card.new(rand(10), :spades)
  end
end

class Deck

  def initialize
    @cards = []
    ["spades", "diamonds", "clubs", "hearts"].each do |suit|
      ["A", *(2..10), "J", "Q", "K"].each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    puts "You dealt: "
    @cards.first.output_card
    puts " "
    @cards.shift
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

a = Deck.new
b = Card.new(3,:spades)
# a.shuffle
a.output
#a.deal
#a.output
# a.deal
# a.output


