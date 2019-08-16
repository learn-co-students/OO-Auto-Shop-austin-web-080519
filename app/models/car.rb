require_relative 'mechanic'

class Car

  attr_reader :make, :model, :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner 
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    Car.all.map{|c| c.classification}
  end

def mechanics
  my_mechanics = Mechanic.all.select {|m| m.specialty == self.classification}
end

end
