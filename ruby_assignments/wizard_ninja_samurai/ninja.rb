require_relative "human"

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end

    def get_away
        @health -= 15
        puts "You have gotten away, but in the process lost 15 hp. Your current hp: " + @health.to_s + "."
    end

    def steal(obj)
        if obj.class.ancestors.include?(Human)
            puts "You have stolen from #{obj.class}."
            if @health == 100
                puts "You are at maximum health!"
            elsif @health <100 and @health > 90
                @health = 100
                puts "You have healed! Your hp is now: " + @health.to_s + "."
            else
                @health += 10
                puts "You have healed! Your hp is now: " + @health.to_s + "."
            end
        true
        else
            false
        end
    end
end
ninja1 = Ninja.new
ninja1.get_away
ninja1.steal(ninja1)
