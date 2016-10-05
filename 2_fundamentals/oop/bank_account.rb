# We are going to create a Bank Account class. This class will recreate some
# of the common Account transactions that normally occur for a bank account
# such as displaying your account number, checking and savings amount, total
# amount. Of course, there are also methods to invoke such as depositing a
# check, checking your balance, withdrawing money.

# a user should not be able to modify any attributes from Bank Account class
class BankAccount
  @@no_of_accounts = 0
  def initialize(rate)
    @@no_of_accounts += 1
    @@interest_rate = rate;
  def acctNum
    # return user's account number
  end

  def acctChkBal
    # return the user's checking account balance
  end

  def acctSavBal
    # return the user's savings account balance
  end

  def totalBal
    # return the sum of both bal
  end

  def withdraw
    # withdraw money from sav or chk, error is below balance
  end

  private
  @@interest rate = 0;
  def genAcct
    # generate and set random account number
  end

  def account_information
    # displays users account, total money, check account bal, sav bal
    # return the interest rate
  end
end
