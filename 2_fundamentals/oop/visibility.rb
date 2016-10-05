# By default, all methods defined in Ruby are public, meaning that they are
# accessible by anyone. To create a private or protected method, you can
# do the following:

class MyObj
  def public_method
  end
  protected # all methods following this declaration will be protected methods
  def protected_method
  end
  def protected_method2
  end
  private # all methods that follow will me made private: not accessible for
          # outside objects
  def private_method
  end
  def private_method2
  end
end
