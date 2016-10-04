require_relative 'mammal'

class Dragon < Mammal
	def initialize(health=170)
		self.health =health
	end
	def eatHumans
		self.health += 20
		self
	end
	def attackTown
		self.health -= 50
		self
	end
	def fly
		self.health -=10
		self
	end
	def displayHealth
		puts "this is a dragon"
		super
		self
	end
end

draco = Dragon.new()

draco.attackTown().attackTown().attackTown().eatHumans().eatHumans().displayHealth()