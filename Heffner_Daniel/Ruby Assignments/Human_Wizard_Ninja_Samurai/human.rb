class Human
	attr_reader :strength, :stealth, :intelligence
	attr_accessor :health
	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
	end
	def attack obj
		obj.health -= rand(5..10) if obj.class.ancestors.include?(Human)
	end
end
