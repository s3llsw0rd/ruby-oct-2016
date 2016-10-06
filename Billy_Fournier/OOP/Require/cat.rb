puts 'I am in the cat file'
require_relative 'mammal'

class Cat < Mammal
	def jerk
		puts 'scratching you...'
		self
	end
	def speak
		puts "meow"
		self
	end
	def who_am_i
		puts self
		self
	end
end
chloe = Cat.new
chloe.jerk.speak.breath.who_am_i
