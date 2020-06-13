class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
  end
  
  def species
    "human"
  end

  def say_species
    return "I am a human."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def cats 
    cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        cats << cat 
      end 
    end
    cats
  end
  
  def dogs
    dogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        dogs << dog
      end
    end
    dogs
  end

def buy_cat(name)
  cat = Cat.new(name, self)
end

def buy_dog(name)
  dog = Dog.new(name, self)
end

def walk_dogs
  
end

def feed_cats
  
end

def sell-pets
  
end

def list_pets
  
end


end