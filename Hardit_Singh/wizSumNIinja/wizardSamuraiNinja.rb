require_relative 'Human'

class Wizard < Human
	def initialize
		super
		self.health = 50
		self.intelligence = 25		
		self
	end

	def heal 
		self.health+=10
		self
	end

	def fireball(obj)
		obj.health-=20 if obj.class.ancestors.inspect.include? 'Human' 
		self
	end	
end

class Samurai < Human
	@@count = 0

	def initialize
		super
		self.health = 200		
		@@count+=1
		self
	end
	
	def deathblow(obj)
		obj.health=0 if obj.class.ancestors.inspect.include? 'Human'
		self
	end

	def meditate
		self.health=200
		self
	end 

	def self.howMany
		puts @@count
	end	
end

class Ninja < Human
	
	def initialize
		super
		self.stealth = 175
		self
	end

	def steal(obj)
		obj.health-=10 if obj.class.ancestors.inspect.include? 'Human'
		self.health += 10
		self
	end

	def getaway
		self.health-=15
		self
	end	
end

shingchang = Samurai.new()
smoke = Ninja.new()
mithrandir = Wizard.new()

shingchang.stats
smoke.stats
mithrandir.stats

