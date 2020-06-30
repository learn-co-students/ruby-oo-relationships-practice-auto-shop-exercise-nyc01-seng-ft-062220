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

  def cars
    Car.all.select {|id| id.mechanic == self}
  end

  def car_owners
    self.cars.map {|id| id.car_owner}
  end

  def car_owner_names
    self.cars.map {|id| id.car_owner.name}
  end

end
