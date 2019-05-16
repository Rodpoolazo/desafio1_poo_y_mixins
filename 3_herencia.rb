#Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start enciende el vehículo.
class Vehicle
  attr_accessor :model, :year, :count
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end
class Car < Vehicle
   @@count = 0
  def initialize(model, year)
   super
   @@count +=1

  end
  def engine_start
    super
    puts "El motor #{@model} se ha encendido!"
  end

   def self.total_instancias
   @@count
  end
end


10.times do
  Car.new("montero" , "2018").engine_start
end
puts Car.total_instancias
