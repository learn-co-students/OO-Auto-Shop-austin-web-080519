require_relative 'car'

class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select {|c| c.owner == self}
  end

  def my_mechanics
    self.my_cars.map{|c| c.mechanic}
  end


  def self.average_amount
    count_cars = Car.all.count
    count_owners = self.all.count
    average_cars = count_cars.to_f / count_owners
  end



end
