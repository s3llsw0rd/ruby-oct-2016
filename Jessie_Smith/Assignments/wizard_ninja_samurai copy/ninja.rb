require_relative "human"
# require_relative "wizard"
# require_relative "samurai"
class Ninja < Human
	def initialize
		super
		@stealth=175
	end
	def steal(object)
		object.health -= 10
		@health += 10
		return self
	end
	def get_away
		@health -= 15
		return self
	end
end
