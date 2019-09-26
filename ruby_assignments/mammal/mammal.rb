class Mammal
    attr_accessor :health
    def initialize
        @health = 150
        self
    end
    
    def display_health
        puts "Your health is: " + @health.to_s
        self
    end
end
