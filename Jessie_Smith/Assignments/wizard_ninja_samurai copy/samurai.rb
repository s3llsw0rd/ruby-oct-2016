require_relative "human"
# require_relative "wizard"
# require_relative "ninja"

class Samurai < Human

	@@count = 0
	def initialize
		super #will run parent characteristics and then will change anything after it to special cases for the class
		@health = 200
		@@count += 1 #running total of samurais
					 #@@ bc it is a class instance (all samurais have the same class (samurai))
	end

	def death_blow(victim)
		victim.health=0
	end
	def meditate 
		@health = 200
	end
	def how_many
		puts @@count #keeps up total of samurais if there is one
	end
end

# Merlin = Wizard.new
# Turtle = Ninja.new
# Sushi = Samurai.new

# Merlin.fireball(Turtle)
# puts Turtle.health

