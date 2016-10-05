#dragon
require_relative 'Mammal'

class Dragon < Mammal
  def initialize(health=170)
    @health = health
    self
  end

  def fly(*arg)
    for i in arg
      @health -= 10*i
    end
    self
  end

  def attack_town(*arg)
    for i in arg
      @health -= 50*i
    end
    self
  end

  def eat_humans(*arg)
    for i in arg
      @health += 20*i
    end
    self
  end

  def display_health
    puts 'This is a dragon!'
    super
  end
end

draco = Dragon.new
draco.attack_town(3).eat_humans(2).fly(2).display_health
