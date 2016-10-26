class Mammal
  attr_accessor :health
  def initialize(health)
    @health=health 
    return self
  end
  def displayHealth
    puts @health
    return self
  end
end

class Dog < Mammal
  def pet
    @health+=5
    return self
  end
  def walk
    @health-=1
    return self
  end
  def run
    @health-=10
    return self
  end

end
 Ron=Dog.new(150)
 Ron.walk.walk.walk.run.run.pet.displayHealth