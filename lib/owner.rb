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
  
end

def buy_dog(name)
  
end



end