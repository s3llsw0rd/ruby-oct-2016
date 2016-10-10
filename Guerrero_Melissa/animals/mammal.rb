class Mammal
	attr_accessor :alive, :health
	def initialize(alive, health)
		@alive=True
			puts "I am alive!"
		@health=150
		self
	end
	def display_health
		puts "The health score is #{@health}."
	end
end