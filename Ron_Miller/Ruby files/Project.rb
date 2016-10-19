class Project
  attr_accessor :name, :description
  def initialize(pName, pDesc)
    @name=pName
    @description =pDesc
  end
  def elevator_pitch
    puts "The project name is "+@name+ " and the description is " +@description
  end
  
end
project1 = Project.new("Project 1", "Description 1")
puts project1.name #prints out Project 1
project1.elevator_pitch