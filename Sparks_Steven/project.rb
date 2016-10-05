class Project
	attr_accessor :name
	def initialize (name, description)
		@name = name
		@description = description
	end
	def elevator_pitch
		puts "#{@description}"
	end
end
project1 = Project.new("This project", "Deep heavy description")
puts project1.name
project1.elevator_pitch

