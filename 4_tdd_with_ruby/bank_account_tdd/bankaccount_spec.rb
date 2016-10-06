# Let's require our BankAccount class
require_relative("bankaccount")

# Now let's setup our RSpec data
RSpec.describe BankAccount do

  # Let's setup our 'pre' environment
  before do
    @b = BankAccount.new
  end

  it "has a method for retrieving the checking account balance" do
    expect(@b.acctChkBal).to eq("The balance of your checking account is: 2500.")
  end

  it "has a method that retrieves the total account balance" do
    expect(@b.totalBal).to eq("Your total balance is: 7500.")
  end

  it "has a method that allows the user to withdraw cash" do
    expect(@b.withdrawChk(200)).to eq("Your checking balance is now: 2300.")
  end

  it "raises an error if a user tries to withdraw more money than they have in the account" do
    expect{@b.withdrawChk(99999)}.to raise_error("Your checking balance is too low.")
  end

  it "raises an error when a user tries to print out how many bank accounts there are" do
    expect{@b.no_of_accounts}.to raise_error(NoMethodError)
  end

  it "raises an error when the user tries to set the interest rates" do
    expect{@b.interest_rate}.to raise_error(NoMethodError)
  end

  it "raises an error when the user tries to set any attribute" do
    expect{@b.no_of_accounts}.to raise_error(NoMethodError)
    expect{@b.balance_check}.to raise_error(NoMethodError)
    expect{@b.balance_savings}.to raise_error(NoMethodError)
  end
end
