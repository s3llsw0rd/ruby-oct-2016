
class Human
    attr_accessor :health
    def initialize
        @strength = 3
        @inteligence = 3
        @stealth = 3
        @health = 100
        self
    end
    def attack(attackee)
        attackee.health -= 10 if attackee.class.ancestors.include? Human
        self
    end
    def print_health
        puts @health
        self
    end
end



# bob = Human.new
# frank = Human.new
#
# bob.print_health
# frank.attack(bob)
# bob.print_health
