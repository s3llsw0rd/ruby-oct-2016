
class Mammal
  attr_accessor :health
  def initialize
    @health=150
    return self
  end
  def displayHealth
    puts @health
    return self
  end
end

class Dragon < Mammal
  def intitalize
    @health=170
  end
  def fly
    @health-=10
    return self
  end
  def attackTown
    @health-=50
    return self
  end
  def eatHuman
    @health+=20
    return self
  end
  def displayHealth
    puts "I am a dragon " + @health.to_s
  end
  
end
 Ron=Dragon.new
 Ron.attackTown.attackTown.attackTown.eatHuman.eatHuman.fly.fly.displayHealth