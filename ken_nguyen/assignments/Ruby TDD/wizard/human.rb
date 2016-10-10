#human class

class Human
  attr_reader :strength, :stealth, :intelligence
  attr_accessor :health

  def initialize strength = 3, stealth = 3, intelligence = 3, health = 100
    @strength = strength
    @stealth = stealth
    @intelligence = intelligence
    @health = health
  end

  def attack obj #you can do that?? pass in another instance, will it change the stats in that instance?
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      true
    else
      false
    end
  end
end
