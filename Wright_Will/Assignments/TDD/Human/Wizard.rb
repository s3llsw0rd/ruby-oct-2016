require_relative "Human"

class Wizard < Human
    attr_accessor :inteligence, :health
    @@max_health = 50
    def initialize
        @inteligence = 25
        @health = 50
        self
    end
    def heal
        @health += 10
        if @health > @@max_health
            @health = @@max_health
        end
        self
    end
    def fireball(attackee)
        attackee.health -= 20
        self
    end


end
