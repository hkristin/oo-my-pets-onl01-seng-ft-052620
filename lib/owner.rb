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
      if cat.owner.name == self.name 
        cats << cat 
      end 
    end
    cats
  end
  
  def dogs
    dogs = []
    Dog.all.each do |dog|
      if dog.owner.name == self.name
        dogs << dog
      end
    end
    dogs
  end

end