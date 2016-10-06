# We are going to have to include our Project class in our spec file.
require_relative "project"

# Now we can start RSpec
# This line enacts the RSpect library and calls the describe method that takes
# in the class Project, when doing so it expects to do something
RSpec.describe Project do

  # Now we can have RSpec test out Project class
  it 'has a getter and setter for our name attribute' do
    # Now we can test our Project class
    # Lets create a new Project and make sure we can set the name attribute
    project = Project.new("Project Name", "I am a project.")
    project.name = "Changed Name"

    # We should be able to run that code, now lets make sure its changed.
    # We run the expect method on our Projects name, and expect our
    # Project to now equal the value of the 'Changed Name,' this returns
    # a boolean - true or false.
    expect(project.name).to eq("Changed Name")
  end

  # Now lets build off of our previous example. We are going to put in a test
  # that makes sure our method returns the correct answer.
  it 'has a method elevator_pitch to explain name and description' do
    # Lets create two new projects
    project1 = Project.new("Project 1", "Description 1")
    project2 = Project.new("Project 2", "Description 2")

    # If we call elevator_pitch method we should expect to get that product name
    # and description back.
    expect(project1.elevator_pitch).to eq("Project 1, Description 1")
    expect(project2.elevator_pitch).to eq("Project 2, Description 2")
  end

  # We added an add_to_team method that pushes into an array. Test it.
  it 'has a method add_to_team that will add a member to members' do
    # Let's create a test project
    project1 = Project.new("Project 1", "Description 1")
    project1.add_to_team("Bob")

    # If we add a member, we should expect property members to contain it.
    expect(project1.team_members.last).to eq("Bob")
  end
end
