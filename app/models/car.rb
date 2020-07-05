class Car
attr_accessor :owner 
  attr_reader :make, :model, :classification
@@all=[]
  def initialize(owner, make, model, classification)
    @owner=owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications 
    classification=all.map {|car| car.classification}
    classification.uniq
  end

  def self.find_mechanics(classification)
    Mechanic.all.select {|mech| mech.specialty==classification}
end
end
