#samurai
require_relative 'Human'

class Samurai < Human

  @@samurai_count = 0

  def self.how_many
    puts @@samurai_count
  end

  def initialize health = 200
    super
    @health = health
    @@samurai_count += 1
  end

  def death_blow obj
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      true
    else
      false
    end
  end

  def meditate
    @health = 200
  end
end

sam = Samurai.new
frodo = Samurai.new
Samurai.how_many
