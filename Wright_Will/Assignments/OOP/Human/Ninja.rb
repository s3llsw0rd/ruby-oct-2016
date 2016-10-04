require_relative "Human"

class Ninja < Human
    def initialize
        @stealth = 175
        self
    end
    def steal(attackee)
        self.atack(attackee)
        @health += 10
        self
    end
    def get_away
        @health -= 15
        self
    end
end
