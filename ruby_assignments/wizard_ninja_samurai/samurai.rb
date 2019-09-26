require_relative "human"

@@number_of_samurai = 0

class Samurai < Human
    def initialize
        super
        @health = 200
        @@number_of_samurai += 1
    end

    def meditate
        @health = 200
        puts "After a calming rest, you are now at full hp!"
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
        obj.health = 0
        puts "You have attacked #{obj.class} and reduced its health to 0!"
        true
        else
            false
        end
    end

    def how_many
        puts "There are: " + @@number_of_samurai.to_s + " samurai currently."
    end
end
samurai1 = Samurai.new
samurai2 = Samurai.new
samurai1.death_blow(samurai2)
samurai2.meditate
samurai1.how_many
