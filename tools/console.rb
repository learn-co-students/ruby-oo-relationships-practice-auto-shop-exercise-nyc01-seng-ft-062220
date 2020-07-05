require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

owner1=CarOwner.new("Ola")
owner2=CarOwner.new("Oleg")
owner3=CarOwner.new("Dima")

car1=Car.new(owner1, "make","model", "old")
car2=Car.new(owner1, "make","model", "speed")
car3=Car.new(owner1, "make","model", "exotic")
car4=Car.new(owner2, "make","model", "old")
car5=Car.new(owner3, "make","model", "old")



mech1=Mechanic.new("Kolia", "exotic")
mech2=Mechanic.new("Vasia", "speed")
mech3=Mechanic.new("Pet", "old")


binding.pry
oo