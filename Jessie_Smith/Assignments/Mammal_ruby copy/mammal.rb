class Mammal
	attr_accessor :alive, :health #setting getters/setters for the things we are gonna change
	def initialize 
		@alive #checking they're alive
			puts "I am alive"
		@health=150 #initialize that all mammals start at 150
		self
	end

	def display_health #method
		puts "The health score is #{@health}."
	end
end

dog1health = Mammal.new