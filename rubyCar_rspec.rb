require 'rspec'
require_relative 'rubyCar'

# Story:  As a programmer, I can make a vehicle.
describe "Vehicle" do
  # I can make a vehicle.
  it "creates a vehicle class" do
    expect{Vehicle.new}.to_not raise_error
  end

  # create an object called myVehicle which is of class Vehicle.
  it "has an object class of Vehicle" do
    myVehicle = Vehicle.new
    expect(myVehicle).to be_a Vehicle
  end
  car = Vehicle.new
  # can turn on and off the lights on a given vehicle
  it "has light that can be turned on or off" do
    expect{car.lightsOn = true}.to_not raise_error
  end

  # Shows if the lights are on(true) or off(false)
  it "displays the current status of the lights" do
    expect(car.lightsOn?).to be_a TrueClass
  end
end

describe "Car" do
  # I can make a car.
  it "creates a car class" do
    expect{Car.new()}.to_not raise_error
  end

  # Story: As a programmer, I can tell how many wheels a car has; default is four.
  # I can make a car with 4 wheels
  it "creates a car with wheels" do
    expect(Car.new.wheels).to be_a Integer
  end

  # I can make a car with a default of 4 wheels
  it "creates a car with 4 wheels" do
    expect(Car.new.wheels).to eq(4)
  end

  # I can make a car with 6 wheels
  it "creates a car with 6 wheels" do
    expect(Car.new(6).wheels).to eq(6)
  end

  it "has model year when Car is created" do
    expect(Car.new.year).to be_a Integer
  end

  # Speed starts at 0 km/h
  it "has defult speed equal to 0" do
    expect(Car.new.speed).to eq(0)
  end


  # Car can speed up
  it "can speed up" do
    myCar = Car.new
    myCar.speedUp
    expect(myCar.speed).to be > 0
  end

  # car can slow down
  it "can slow down to zero" do
    myCar = Car.new
    myCar.speedUp
    myCar.slowDown
    expect(myCar.speed).to eq(0)
  end
end


describe "Tesla" do
  # I can make a car.
  it "creates a Tesla class which is Car" do
    expect{Tesla.new}.to_not raise_error
  end

  # can speed a car up by 10
  it "can speed up" do
    myCar = Tesla.new
    myCar.speedUp
    expect(myCar.speed).to eq(10)
  end

  # can slow down car by 7
  it "can slow down by 7" do
    myCar = Tesla.new
    myCar.speedUp
    myCar.slowDown
    expect(myCar.speed).to eq(3)
  end

  # it can beep
  it "can beep" do
    expect(Tesla.new.honk).to eq("beep beep")
  end
end

# describe "Array of Cars" do
#   it "has 6 cars"
#
#   it "orders by model and year"
# end
