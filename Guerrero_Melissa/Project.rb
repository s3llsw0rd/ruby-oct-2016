class Project
	attr_accessor :name, :description
	def initialize(name, description)
		@name = name
		@description = description
	end

	def elevator_pitch
		puts "This project is called #{@name} and it has to do with #{@description}"
	end
end

project1 = Project.new("Angry Birds Tower", "Building a Lego setup involving Angry Birds characters")
puts project1.name
puts project1.elevator_pitch
