class Organism
    attr_accessor :name
    
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
            puts " --- Sleeping for 8 hours fully restores #{name.capitalize}'s health."
        else
            puts "The organism falls asleep."
            puts " --- Sleeping for 8 hours fully restores the creature's health."
        end
    end
end

class Tube < Organism

    def roll
        puts "Rolling over objects, the creature finds enough food for today."
    end
end

class Square < Organism
    def stay_still
        puts "[...] --- nothing seems to happen."
    end

    def absord_light
        puts "No need to eat for squares. The creature is satisfied"
    end
end

class Pyramid < Organism
    def absord_energy
        puts "No need to eat for pyramids. The creature is satisfied"
    end
end

class Hole < Organism
    def swallow
        puts "The creature swallows everything around it, feeling full. Will it last?"
    end
end

class Goo < Organism
    def leave_trail
        puts "Eugh"
    end
end

class Spaceship
    seats = 5

    def blast_off

        gas_total = 1000
        gas_consumption = 100
        gas_used = 0

        puts "Taking off!"

        while gas_used < gas_total
            puts "Gas remaining: #{gas_total - gas_used}"
            gas_used += gas_consumption
        end

        puts "Reached destination!"
    end
end

tube = Tube.new
tube.name = 'tube'
tube.print_info
tube.roll

square = Square.new
square.stay_still

tube.stand_up
square.stand_up

tube.sleep
square.sleep

Pyramid.new.absord_energy
Goo.new.leave_trail

Spaceship.new.blast_off