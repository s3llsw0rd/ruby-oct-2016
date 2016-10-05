#dog class
require_relative 'Mammal'

class Dog < Mammal
  # def initialize
  #   super
  # end

  def pet(*val)
    for i in val
      @health += 5*i
    end
    self
  end

  def walk(*val)
    for i in val
      @health -= 1*i
    end
    self
  end

  def run(*val)
    for i in val
      @health -= 10*i
    end
    self
  end
end

sunday = Dog.new
sunday.walk(3).run(2).pet(1).display_health
