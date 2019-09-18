class Animal
  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def eat
    puts "On nom nom"
  end

end

class Dog < Animal
  
  attr_accessor :name, :breed, :size

  def initialize(name, breed, size, type=:Dog)
    super(type)
    @name = name
    @breed = breed
    @size = size
  end

  def bark
    puts "Woof woof woof"
  end

  def dog_tag
    puts "My name is: #{@name}, I am a #{@breed}, and I weight #{@size} pounds"
  end
end

class Puppy < Dog

  def initialize(name, breed, size)
    super(name, breed, size)
  end

  def lick
    puts "woosh woosh mmm"
  end

end


class Cat < Animal
  
  attr_accessor :name, :size, :color

  def initialize(name, size, color, type=:Cat)
    super(type)
    @name = name
    @size = size
    @color = color
  end

  def pur
    puts "Prrrrrr"
  end

  def cat_tag
    puts "My name is: #{@name}, I am color #{@color}, and I weight #{@size} pounds"
  end 
end

class Kitten < Cat

  def initialize(name, weight, color)
    super(name, weight, color)
  end

  def meow
    puts "MEoooooooow"
  end

end

elephant = Animal.new(:Elephant)
puts "#{elephant.type}"
elephant.eat
puts""

dexter = Dog.new("Dexter", :SaintBernard, 120)
dexter.dog_tag
puts "#{dexter.type}"
dexter.eat
puts""

ariel = Puppy.new("Ariel", :shihPooh, 5)
ariel.dog_tag
puts "#{ariel.type}"
ariel.eat
ariel.bark
ariel.lick
puts""

cornelius = Cat.new("Cornelius", 10, :gray)
cornelius.cat_tag
puts "#{cornelius.type}"
cornelius.eat
cornelius.pur
puts ""

jo = Kitten.new("JO", 2.5, :orange)
jo.cat_tag
puts "#{jo.type}"
jo.eat
jo.pur
jo.meow
puts""

