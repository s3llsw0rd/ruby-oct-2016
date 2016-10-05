require_relative 'project'
RSpec.describe Project do

	before do
		@project = Project.new("Project Name", "I am a project")
	end

	it 'has a getter and setter for name attribute' do
		@project.name = "Changed Name"
		expect(@project.name).to eq("Changed Name")
	end

	it 'has a getter and setter for description attribute' do
		@project.description = "Changed description"
		expect(@project.description).to eq("Changed description")
	end

	it 'has a method elevator_pitch to explain name and description' do
		elevator = Project.new("Elevator Test", "Elevators carry people up and down")
		expect(elevator.elevator_pitch).to eq("\nThe project's name is Elevator Test. Basically, here it is:\nElevators carry people up and down")
	end

	it 'has a method to add members to the team' do
		@project.add_to_team("Test Member")
		@project.add_to_team("Test Member 2")
		expect(@project.team).to eq(["Test Member", "Test Member 2"])
	end

end
