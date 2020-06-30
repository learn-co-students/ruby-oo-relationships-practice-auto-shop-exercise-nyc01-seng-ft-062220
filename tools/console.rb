require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


m1 = Mechanic.new("Jeff", "antique")
m2 = Mechanic.new("Steve", "exotic")
m3 = Mechanic.new("Peter", "clunker")

o1 = CarOwner.new("Kevin")
o2 = CarOwner.new("James")

c1 = Car.new("Toyota", "SS1", "antique", o1, m1)
c2 = Car.new("Nissan", "Sentra", "exotic", o1, m2)
c3 = Car.new("Suburu", "PP3", "clunker", o1, m3)
c4 = Car.new("Benz", "250", "clunker", o2, m3)
c5 = Car.new("Ford", "Polo", "antique", o2, m1)


binding.pry
