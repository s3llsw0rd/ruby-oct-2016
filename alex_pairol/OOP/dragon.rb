require_relative 'mammal'

class Dragon < Mammal
  def initialize
    @health = 170
    self
  end

  def fly
    @health -=10
    self
  end

  def attack_town
    @health -=50
    self
  end

  def eat_humans
    @health +=20
    self
  end

  def display_health
    puts "this is a dragon"
    super
    self
  end
end

smaug=Dragon.new
# smaug.display_health.fly.display_health
# smaug.display_health.attack_town.display_health.eat_humans
smaug.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health