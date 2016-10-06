require_relative "Human"

class Samurai < Human
    @@max_health = 200
    @@how_many = 0
    def initialize
        @health = 200
        @@how_many += 1
        self
    end
    def death_blow(attackee)
        attackee.health = 0
        self
    end
    def meditate
        @health = @@max_health
        self
    end
    private
    def how_many
        @@how_many
        self
    end
end

fred = Samurai.new

bob = Human.new


# bob.attack(fred)
# puts fred.health
# fred.meditate
# puts fred.health
