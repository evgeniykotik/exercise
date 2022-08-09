class Vehicle
  attr_accessor :odometer, :gas_used
  def accelerate
    puts "Floor it!"
  end
  def sound_horn
    puts "Beep! Beep!"
  end
  def steer
    puts "Turn front 2 wheels."
  end
  def mileage
    @odometer / @gas_used
  end
end
class Car < Vehicle
end
class Truck < Vehicle
  attr_accessor :cargo
  def load_bed(contents)
    puts "Securing #{contents} in the truck bed."
    @cargo=contents
  end
end
class Motorcycle < Vehicle
  def steer
    puts "Turn front wheel."
  end
end
truck = Truck.new
motorcycle=Motorcycle.new
motorcycle.steer
motorcycle.odometer=140
motorcycle.gas_used=7
puts motorcycle.mileage
motorcycle.sound_horn