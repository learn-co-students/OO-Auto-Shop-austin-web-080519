require_relative 'car'

class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def all_cars
  cars_i_service = Car.all.select {|c| c.mechanic == self}
end

def my_owners
  self.all_cars.map{|c| c.owner}
end

def car_owners_names
  my_owners.map{|o| o.name}
end
end
