
class Mammal
	attr_accessor :health

	def initialize(health=150)
		self.health = health
	end

	def displayHealth
		puts self.health
		self
	end	
end