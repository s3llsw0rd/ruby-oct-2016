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
  def add_to_team(member_name)
  	@team.push(member_name)
  	return self
  end
end