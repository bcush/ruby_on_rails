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
end
