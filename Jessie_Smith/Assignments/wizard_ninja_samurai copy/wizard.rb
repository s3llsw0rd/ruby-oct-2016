require_relative "human"
# require_relative "samurai"
# require_relative "ninja"

class Wizard < Human

	def initialize
		super
		@health=50
		@intelligence=25
	end
	def heal
		@health += 10
		return self
	end
	def fireball(attacker)
		attacker.health -= 20
	end
end
