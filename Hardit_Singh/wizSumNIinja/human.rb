class Human

	attr_accessor :strength, :intelligence, :health, :stealth

	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
		self
	end

	def stats
		puts '-----------------------------'
		puts "stealth #{@stealth}"
		puts "strength #{@strength}"
		puts "intelligence #{@intelligence}"
		puts "health #{@health}"
	end

	def attack(obj)
		obj.health-=3 if obj.class.ancestors.inspect.include? 'Human' 
	end

end

