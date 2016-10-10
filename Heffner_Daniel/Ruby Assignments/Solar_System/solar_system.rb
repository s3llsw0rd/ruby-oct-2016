class Planet
	attr_accessor :name, :description, :population
	def initialize name, desc, pop
		@name = name
		@description = desc
		@population = pop
	end
end

class Solar_System
	attr_reader :name, :planet_list, :planet_count
	def initialize (name = nil)
		@name = name || 'Sol'
		@planet_list = []
		@planet_count = 0
	end
	def add_planet planet
		if planet.is_a?(Planet)
			@planet_list << planet
			@planet_count += 1
		else
			'Must add an instance of the Planet class!'
		end
	end
	def super_nova
		@planet_list = []
		@planet_count = 0
	end

end
