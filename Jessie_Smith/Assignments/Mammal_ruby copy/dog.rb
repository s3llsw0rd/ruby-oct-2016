require_relative "mammal" #need require relative to link classes (like linking CSS)
class Dog < Mammal #dog is inheriting all from mammal class
	
	def pet 
		@health += 5
		return self #need self bc it return health to each "section" and applying it to the dog (carries dog through the chained method)
	end
	def walk 
		@health -= 1
		return self
	end
	def run 
		@health -= 10
		return self 
	end
end
puts Dog.new.walk.walk.walk.run.run.pet.display_health
#need self bc new instance of "dog" is talking about a dog and now talking about a "walk"
#dog.new returns dog