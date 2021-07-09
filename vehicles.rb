class Vehicle

    attr_accessor :odometer
    attr_accessor :gas_used

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
        return @odometer / @gas_used
    end
end

class Car < Vehicle
end

class Truck < Vehicle
    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{contents} in the truck bed."
        @cargo = contents
    end
end

class Motorcycle < Vehicle
    def steer
        puts "Turn front wheel."
    end
end

puts 'Truck'
truck = Truck.new
truck.accelerate
truck.steer
truck.load_bed("259 bouncy balls")

puts ""

puts 'Car'
car = Car.new
car.odometer = 11432
car.gas_used = 366

print "Lifetime MPG: "
puts car.mileage

puts ""

puts 'Motorcycle'
motorcycle = Motorcycle.new
motorcycle.steer