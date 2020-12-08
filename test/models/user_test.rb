require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
  @user = User.new(name:"Example User",email:"user@example.com",
               password:"foobar",password_confirmation:"foobar")
  # test "the truth" do
  #   assert true
  # end
  end
  test"password should be present (nonblank)"do
  @user.password= @user.password_confirmation=" "*6assert_not@user.valid?
  end
  test"password should have a minimum length"do
  @user.password= @user.password_confirmation="a"*5assert_not@user.valid?
  end
end
