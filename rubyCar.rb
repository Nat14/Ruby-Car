class Vehicle

  def initialize(speed=0)
    @lightsOn = false
    @speed = speed
  end

  # def toggleLights
  #   if @lightsOn == true
  #     @lightsOn = false
  #   else
  #     @lightsOn = true
  #   end
  # end

  def lightsOn?
    return @lightsOn
  end
  #
  def lightsOn= lights
    @lightsOn = lights
  end
  #
  def speed
    return @speed
  end

end
#
#
class Car < Vehicle
#
#   @@new_garage = []
#
  def initialize(wheels = 4, year = 1997)
    @wheels = wheels
    @year = year
    super()
    # @@new_garage << self
  end
#
#   def self.car_garage
#     return @@new_garage
#   end
#
  def wheels
    return @wheels
  end
#
  def year
    return @year
  end

  def speedUp
    @speed += 10
  end

  def slowDown
    if @speed >= 10
      @speed -= 10
    else
      @speed = 0
    end
  end

end
#
# # class for Tesla that inherits from Car class. Only needs speedup and slowDown methods becasuse it inherits from Car and Vehicle initialization.
#
class Tesla < Car
#
  def speedUp
    @speed += 10
  end
#
  def slowDown
    if @speed >= 7
      @speed -= 7
    else
      @speed = 0
    end
  end

  def honk
    "beep beep"
  end
#
end
#
# # class for Tata that inherits from Car class. Only needs speedup and slowDown methods becasuse it inherits from Car and Vehicle initialization.
#
# class Tata < Car
#
#   def speedUp
#     @speed += 2
#   end
#
#   def slowDown
#     if @speed >= 1.25
#       @speed -= 1.25
#     else
#       @speed = 0
#     end
#   end
#
# end
#
# # class for Toyota that inherits from Car class. Only needs speedup and slowDown methods becasuse it inherits from Car and Vehicle initialization.
# class Toyota < Car
#
#   def speedUp
#     @speed += 7
#   end
#
#   def slowDown
#     if @speed >= 5
#       @speed -= 5
#     else
#       @speed = 0
#     end
#   end
#
# end
#
# myTesla = Tesla.new(2013)
# yourTesla = Tesla.new(2012)
# puts myTesla.class.to_s + " has " + myTesla.wheels.to_s + " wheels" + "and lights are on? " + myTesla.lightsOn?.to_s
#
# myTesla.lightsOn = true
# puts myTesla.class.to_s + " lights are on? " + myTesla.lightsOn?.to_s
#
# myTata = Tata.new(1976)
# yourTata = Tata.new(1986)
#
# puts myTata.class.to_s + " has " + myTata.wheels.to_s + " wheels."
#
# myToyota = Toyota.new(2005)
# yourToyota = Toyota.new(2015)
#
# puts myToyota.class.to_s + " has " + myToyota.wheels.to_s + " wheels."
#
# # create new array of cars
# garage = [Tesla.new(2013), Tesla.new(2012), Tata.new(1976), Tata.new(1986),Toyota.new(2005), Toyota.new(2003)]
#
#
# # sort by year of each object, from old to new
# garageYear = garage.sort { |x, y| x.year <=> y.year }
# garageYear2 = garage.sort_by { |x| x.year }
#
# # sort each object by class alphabetically
# garageClass = garage.sort do |x, y|
#   x.class.to_s <=> y.class.to_s
# end
#
# # sort each object by class, and then by year
# garageBoth = garage.sort do |x, y|
#   [x.class.to_s, x.year.to_s] <=> [y.class.to_s, y.year.to_s]
# end
# garageBoth2 = garage.sort_by { |x| [x.class.to_s, x.year] }
#
#
# # print out output of above sort methods/blocks
# garageYear.each {|x| puts x.year}
# puts "+++_+_+_+_+_+_+_+_"
# garageYear2.each {|x| puts x.year}
# puts "+++_+_+_+_+_+_+_+_"
# garageClass.each {|x| puts x.class.to_s}
# puts "+++_+_+_+_+_+_+_+_"
# garageBoth.each {|x| puts x.class.to_s + " " + x.year.to_s}
# puts "+++_+_+_+_+_+_+_+_"
# garageBoth2.each {|x| puts x.class.to_s + " " + x.year.to_s}
#
#
# myTesla.speedUp
# puts myTesla.speed.to_s
#
# myTesla.slowDown
# puts myTesla.speed.to_s
#
# myTesla.slowDown
# puts myTesla.speed.to_s
#
# myTesla.slowDown
# puts myTesla.speed.to_s
#
# myTata.speedUp
# puts myTata.speed.to_s
#
# myTata.slowDown
# puts myTata.speed.to_s
#
# myTata.slowDown
# puts myTata.speed.to_s
#
# myToyota.speedUp
# puts myToyota.speed.to_s
#
# Car.car_garage.each do |x| puts x.year end
# car2 = Car.car_garage.sort_by do |x| [x.class.to_s, x.year] end
# car2.each {|x| puts x.class.to_s + " " + x.year.to_s}
