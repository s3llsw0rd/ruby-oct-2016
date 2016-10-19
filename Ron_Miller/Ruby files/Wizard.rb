class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end
end
class Wizard < Human
  def initialize
    @intelligence = 25
    @health = 50
  end
  def heal
    health+=10
  end
  def fireBall(object)
    obj.health-=20
  end
  
end

class Ninja < Human
  def initialize
    @stealth = 175
  end
  def steal
    @health+=10
  end
  def getAway
    @health-=15
  end
  end

class Samurai < Human
  def initialize
    @health = 200
  end
  def deathBlow(object)
    object.health=0
  end
  def meditate
    @health =200
  end
  def showSam
    puts ObjectSpace.each_object(Samurai).count.to_s
  end
end 

bob=Samurai.new()
bob.showSam
puts bob.health