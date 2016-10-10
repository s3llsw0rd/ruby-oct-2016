#we are going to have to include our Project class in our spec file
require_relative 'class_Project'
#now we can start Rspec
#this line enacts the Rspec library and calls the describe method that takes in the class Project, when doing so it expects to do something
RSpec.describe Project do
  it 'has a getter and setter for name attribute' do
    
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"
    
    expect(project.name).to eq("Changed Name")
  end 
  it 'has a method elevator_pitch to explain name and description' do
    project1 = Project.new('Project 1', 'description 1')
    project2 = Project.new('Project 2', 'description 2')

    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a method called add_to_team to add a new team member' do
    project3 = Project.new('Project 1', 'description 1')
    expect(project3.team).to eq([])
  end
end