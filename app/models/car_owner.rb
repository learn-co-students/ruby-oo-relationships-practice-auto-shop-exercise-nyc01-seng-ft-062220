require "pry"

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

  def cars
    Car.all.select {|c| c.car_owner == self}
  end

  def mechanics
    self.cars.map {|c| c.mechanic}
  end

  def number_of_cars
    self.cars.count
  end

  def self.average_number_of_cars
    average = self.all.map {|co| co.number_of_cars}
    average.sum(0.0) / average.count
  end


end
