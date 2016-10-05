class Human
	@strength
	@stealth
	@intelligence
	attr_accessor :health

	def initialize
		@strength = 3
		@stealth = 3
		@intelligence = 3
		@health = 100
		self
	end

	def stats
		puts "stealth #{@stealth}"
		puts "strength #{@strength}"
		puts "intelligence #{@intelligence}"
		puts "health #{@health}"
	end

	def attack(obj)
		obj.health-=3 if obj.class.ancestors.inspect.include? 'Human' 
	end

end

a = Human.new()
b = Human.new()
b.attack(a)
a.stats