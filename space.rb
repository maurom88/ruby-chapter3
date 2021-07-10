class Organism
    attr_accessor :name
    attr_accessor :total_health
    attr_accessor :current_health
    
    def print_info
        puts "Organism name: #{name}"
    end

    def stand_up
        if name
            puts "#{name.capitalize} stands up."
        else
            puts "The organism rises."
        end
    end

    def sit
        if name
            puts "#{name.capitalize} sits down."
        else
            puts "The organism rests."
        end
    end

    def wake_up
        if name
            puts "#{name.capitalize} opens it eyes."
        else
            puts "The organism opens its eyes."
        end
    end

    def sleep
        if name
            puts "#{name.capitalize} falls asleep."
            puts " --- Sleeping for 8 hours gives #{name.capitalize} 4 health points back."
            # current_health += 4
            puts " --- Current health: #{current_health}"
        else
            puts "The organism falls asleep."
            puts " --- Sleeping for 8 hours gives the creature 4 health points back."
            # current_health += 4
            puts " --- Current health: #{current_health}"
        end
    end
end

class Tube < Organism

    def roll
        puts "Rolling, rolling, rolling."
    end
end

class Square < Organism
    def stay_still
        puts "[...] --- nothing seems to happen."
    end
end

class Pyramid < Organism
end

class Hole < Organism
end

class Goo < Organism
end

class Spaceship

end

tube = Tube.new
tube.name = 'tube'
tube.print_info
tube.roll

square = Square.new
square.stay_still

tube.stand_up
square.stand_up

tube.current_health = 50
tube.sleep

square.current_health = 10
square.sleep