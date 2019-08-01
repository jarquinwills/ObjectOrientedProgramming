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
    y = 0
    temp = nil
    while y < 4
      x = 1
      if y == 0 
        temp = :spades
      elsif y == 1
        temp = :hearts
      elsif y == 2
        temp = :cloves
      else
        temp = :diamond
      end

      while x <= 13
        if x == 1
          @cards << Card.new("A", temp)
        elsif x == 11 
          @cards << Card.new("J", temp)
        elsif x == 12
          @cards << Card.new("Q", temp) 
        elsif x == 13
          @cards << Card.new("K", temp)
        else
          @cards << Card.new(x.to_s, temp)
        end
        x += 1
      end
      y += 1
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
a.shuffle
a.output
a.deal
a.output
a.deal
a.output

