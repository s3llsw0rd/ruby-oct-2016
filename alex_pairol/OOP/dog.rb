require_relative 'mammal'

class Dog < Mammal
  def pet
    @health +=5
    self
  end

  def walk
    @health -=1
    self
  end

  def run
    @health -=10
    self
  end

end


fido=Dog.new
# fido.display_health.pet.display_health.walk.display_health.run.display_health

# fido.walk.walk.walk.run.run.pet.display_health