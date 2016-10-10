class Human
	attr_accessor :strength, :intelligence, :stealth, :health
	def initialize 
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack(victim)
		if victim.class.ancestors.include?(Human)
			puts "Attacking!"
			victim.health -= 10
		else
			puts "Don't attack non-humans!"
		end
	end
end



