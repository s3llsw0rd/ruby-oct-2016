
class Human
    attr_accessor :health
    def initialize
        @strength = 3
        @health = 3
        @stealth = 3
        @health = 100
    end
    def attack(attackee)
        # puts attackee.class.ancestors.include? Human
        attackee.health -= @strength if attackee.class.ancestors.include? Human
    end
    def print_health
        puts @health
    end
end



bob = Human.new
frank = Human.new

bob.print_health
frank.attack(bob)
bob.print_health
