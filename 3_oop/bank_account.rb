# We are going to create a Bank Account class. This class will recreate some
# of the common Account transactions that normally occur for a bank account
# such as displaying your account number, checking and savings amount, total
# amount. Of course, there are also methods to invoke such as depositing a
# check, checking your balance, withdrawing money.

# a user should not be able to modify any attributes from Bank Account class
class BankAccount
  # Number of accounts will be a Class variable
  @@no_of_accounts = 0
  def initialize()
    # When a new Object is created, then we want to increment number of accounts
    @@no_of_accounts += 1
    @balance_check = 2500
    @balance_savings = 5000
    @account_no = genAcct
    setInt()
  end

  def acctNum
    puts "Your account number is: #{@account_no}."
  end

  def acctChkBal
    puts "The balance of your checking account is: #{@balance_check}."
  end

  def acctSavBal
    puts "The balance of your savings account is: #{@balance_savings}."
  end

  def totalBal
    puts "Your total balance is: #{@balance_check + @balance_savings}."
  end

  def withdrawChk(amount)
    # withdraw money from checking, error is below balance
    if amount < @balance_check
      @balance_check -= amount
    else
      puts "Your checking balance is too low."
    end
  end

  def withdrawSav(amount)
    # withdraw money from save, error if below balance
    if amount < @balance_savings
      @balance_savings -= amount
    else
      puts "Your savings balance is too low."
    end
  end

  def account_information
    # displays users account, total money, check account bal, sav bal
    # return the interest rate
    puts "Account number is: #{@account_no}."
    puts "Your total money is: #{@balance_check + @balance_savings}"
    puts "Your check account balance is: #{@balance_check}."
    puts "Your savings account balance is: #{@balance_savings}."
    puts "Your interest rate is: #{@interest_rate}."
  end

  private

  def genAcct
    # generate and set random account number
    rand.to_s[2..6]
  end

  def setInt
    @interest_rate = 0.05
  end


end

savings = BankAccount.new
savings.acctNum
savings.acctChkBal
savings.acctSavBal
savings.totalBal
savings.withdrawChk(50)
savings.withdrawSav(100)
savings.account_information
