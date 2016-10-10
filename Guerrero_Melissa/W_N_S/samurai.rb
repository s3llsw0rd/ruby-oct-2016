require_relative "human"
require_relative "wizard"
require_relative "ninja"
class Samurai < Human
	@@count = 0
	def initialize
		super
		@health = 200
		@@count += 1
	end
	def death_blow(victim)
		victim.health = 0
	end
	def meditate
		@health = 200
	end
	def how_many
		puts @@count
	end
end





