#project_spec

require_relative 'project'

RSpec.describe Project do

  it 'has a getter and setter for name attribute' do
    project = Project.new("Project Name", "I am a project")
    project.name = "Changed Name"

    expect(project.name).to eq("Changed Name")
  end

  it 'has a method elevator_pitch to explain name and description' do
    project1 = Project.new("Project 1", "description 1")
    project2 = Project.new("Project 2", "description 2")

    expect(project1.elevator_pitch).to eq("Project 1, description 1")
    expect(project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it 'adds new members to the team with add_to_team' do
    project1 = Project.new("Project 1", "description 1")

    expect(project1.add_to_team("Chris")).to include("Chris")
  end
end
