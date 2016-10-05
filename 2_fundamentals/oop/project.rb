# Create a Project Class that has the following attributes: Project name,
# Project description. There should also be a method in there called
# elevator_pitch which should state what the project name is and what the
# project description is.

class Project
  # your code here
  def initialize (proj_name, proj_desc)
    @name = proj_name
    @description = proj_desc
  end
  attr_accessor :name, :description
  def elevator_pitch
    puts "#{@name}, #{@description}"
  end
end

project1 = Project.new("Project 1", "Description 1")
puts project1.name        # prints out Project 1
project1.elevator_pitch   # prints out 'Project 1, Description 1'
