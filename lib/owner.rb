class Owner
  # code goes here

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name, mood="nervous")
    fish = Fish.new(name, mood="nervous")
    @pets[:fishes] << fish
  end

  def buy_cat(name, mood="nervous")
    cat = Cat.new(name, mood="nervous")
    @pets[:cats] << cat
  end

  def buy_dog(name, mood="nervous")
    dog = Dog.new(name, mood="nervous")
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets.values.map do |array|
      array.map do |pet|
        pet.mood = "happy"
      end
    end
  end

  def play_with_cats
    @pets.values.map do |array|
      array.map do |pet|
        pet.mood = "happy"
      end
    end
  end

  def feed_fish
    @pets.values.map do |array|
      array.map do |pet|
        pet.mood = "happy"
      end
    end
  end

  def sell_pets
    @pets.values.map do |array|
      array.map do |pet|
        pet.mood = "nervous"
      end
    end
    @pets.values.map {|value| value.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
