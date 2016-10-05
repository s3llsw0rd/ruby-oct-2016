require_relative 'human'
class Samurai < Human
	@@num_samurai = 0
	def initialize
		super
		@health = 200
		@@num_samurai += 1
	end
	def death_blow obj
		obj.health = 0 if obj.class.ancestors.include?(Human)
	end
	def meditate
		@health = 200
	end
	def how_many
		puts @@num_samurai
	end
end
