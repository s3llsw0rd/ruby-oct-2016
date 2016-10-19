class Human
  attr_accessor :strength,:stealth,:intelligence,:health
  def initialize()
    @strength=3
    @stealth=3
    @intelligence=3
    @health=100
  end
  def attack(object)
    if object.class.ancestors[0]==Human then object.decHealth
    end
  end
  def decHealth
    @health-=10
  end
end

ron = Human.new
Bob = Human.new
ron.attack(Bob)
puts Bob.health
