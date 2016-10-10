class Project
	attr_accessor :name, :description, :team
	def initialize(name, desc)
		@name = name
		@description = desc
		@team = []
	end
	def elevator_pitch
		"\nThe project's name is #{@name}. Basically, here it is:\n#{@description}"
	end
	def add_to_team member
		@team << member if member.is_a?(String)
	end
end
