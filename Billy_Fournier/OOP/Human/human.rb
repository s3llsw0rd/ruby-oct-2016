class B

end

class Human
  attr_accessor :health
  def initialize
    @health = 100
    @str = 3
    @stealth = 3
    @int = 3
  end
  def attack(target)
    target.health -= (rand()*25).round(3) if target.class.ancestors.include? Human
    # puts 'yay2' if target.class <= Human
  end
end

a = Human.new
b = Human.new

a.attack(b)
puts b.health
