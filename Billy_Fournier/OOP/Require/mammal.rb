puts 'I am in the mamal file'

class Mammal
	attr_accessor :alive
	def initialize
		@alive = true
		puts 'I am alive!'
		self
	end
	def breath
		puts 'Inhale and exhale'
		self
	end
end
