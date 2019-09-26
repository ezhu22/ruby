class Character
    @name
    @taunt
    attr_accessor :name, :taunt
    def initialize(name)
        @name = name
    end
    def attack(obj)
        if obj.class.ancestors.include?(Character)
            puts @taunt + " " + obj.name + "."
            true
        else
            false
        end
    end
end

class Ninja < Character
    def initialize(name)
        super
        @taunt = "Can't catch me!"
    end
    def attack(obj)
        if super
            puts "Silent night."
        end
    end
end

class Pirate < Character
    def initialize(name)
        super
        @taunt = "I'll make yal walk'r plank!"
    end
    def attack(obj)
        if super
            puts "FIRE!"
        end
    end
end

class Zombie < Character
    def initialize(name)
        super
        @taunt = "I'm hungry."
    end
    def attack(obj)
        puts "BRRAIINNSS!!"
    end
end

ninja1 = Ninja.new("Naruto")

pirate1 = Pirate.new("Gangplank")

zombie1 = Zombie.new("Brand")

ninja1.attack(zombie1)
pirate1.attack(ninja1)
zombie1.attack(ninja1)