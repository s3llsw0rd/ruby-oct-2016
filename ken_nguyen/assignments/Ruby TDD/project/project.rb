#project assignment

#project name, project description
#method elevator pitch -- state what name and description is

class Project
  attr_accessor :name, :description, :team

  def initialize name, description
    @name = name
    @description = description
    @team = []
  end

  def elevator_pitch
    "#{@name}, #{@description}"
  end

  def add_to_team member
    @team << member
  end
end

# project1 = Project.new('pineapple','the movie')
# puts project1.name
# project1.elevator_pitch
