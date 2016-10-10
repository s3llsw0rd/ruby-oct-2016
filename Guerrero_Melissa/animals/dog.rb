require_relative mammal
class Dog < Mammal
	def pet
		@health += 5
	end
	def walk 
		@health -= 1
	end
	def run
		@health += 10
	end
end
puts Dog.new.walk(3).run(2).pet(1).display_health