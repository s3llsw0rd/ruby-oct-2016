require_relative "Human"

class Wizard < Human
    @@max_health
    def initialize
        @inteligence = 25
        @health = 50
        self
    end
    def health
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
