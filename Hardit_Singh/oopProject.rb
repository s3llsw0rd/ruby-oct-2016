class Project
	attr_accessor :projectName
	attr_accessor :projectDescription

	def initialize(projectName,projectDescription)
		@projectName = projectName
		@projectDescription= projectDescription
	end

	def elevatorPitch
		puts self.projectDescription
		self
	end
end

newProject = Project.new('new_Ruby_Project','This my firs oop assignment')
newProject.elevatorPitch