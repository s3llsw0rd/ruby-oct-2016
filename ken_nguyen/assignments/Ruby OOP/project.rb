#project assignment

#project name, project description
#method elevator pitch -- state what name and description is

class Project
  attr_accessor :name,:description

  def initialize name, description
    @name = name
    @description = description
    self
  end

  def elevator_pitch
    puts "#{@name}, #{@description}"
    self
  end
end

project1 = Project.new('pineapple','the movie')
puts project1.name
project1.elevator_pitch
