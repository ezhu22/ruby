require_relative "human"

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end
    def heal
        if @health == 50
            puts "You are at maximum health!"
        elsif @health <50 and @health > 40
            @health = 50
            puts "You have healed! Your hp is now: " + @health.to_s + "."
        else
            @health += 10
            puts "You have healed! Your hp is now: " + @health.to_s + "."
        end
    end

    def fireball(obj)
        if obj.class.ancestors.include?(Human)
        obj.health -= 20
        puts "You have attacked #{obj.class} and dealt 20 damage reducing their health to: " + obj.health.to_s + "!"
        true
        else
            false
        end
    end
end

wizard1 = Wizard.new

puts wizard1.inspect
# wizard1.fireball(wizard1)
# wizard1.heal