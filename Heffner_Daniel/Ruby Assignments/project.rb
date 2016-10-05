class Project
	attr_accessor :name, :description
	def initialize(name, desc)
		@name = name
		@description = desc
	end
	def elevator_pitch
		puts "\nThe project's name is #{@name}. Basically, here it is:\n#{@description}"
	end
end

project1 = Project.new("Get Rich", "Step 1: Learn Ruby on Rails.\nStep 2: ???\nStep 3: Profit!")
puts project1.name
project1.elevator_pitch
