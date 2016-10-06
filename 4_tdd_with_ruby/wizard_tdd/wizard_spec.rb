require_relative 'wizard'
RSpec.describe Wizard do

  # Configure our 'pre' setup
  before do
    @w = Wizard.new
  end

  it "class Wizard has a default health of 50 and intelligence of 25" do
    expect(@w.health).to eq(50)
    expect(@w.intelligence).to eq(25)
  end

  it "class Wizard has a heal method that increases health by 10" do
    expect(@w.heal.health).to eq(60)
  end

  it "class Wizard has an ancestor chain that includes Human" do
    expect(@w.class.ancestors.include?(Wizard)).to eq(true)
  end

  it "class Wizard has a fireball method that attacks an object and reduces health" do
    wizard1 = Wizard.new
    wizard2 = Wizard.new
    wizard1.fireball(wizard2)
    expect(wizard2.health).to eq(30)
  end
end
