class Owner
  attr_accessor :cats, :dogs
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self
    @cats = []
    @dogs = []
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
    self.cats
  end
  
  def dogs
    self.dogs
  end
end