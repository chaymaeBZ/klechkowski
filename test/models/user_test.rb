require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = User.new(name: "a"*50, email: "chamchem@gmail.com", password: "chaymaeBZ",
  	 password_confirmation: "chaymaeBZ")
  end
  test "name should be valid" do
  	assert @user.valid?
  end
  test "email should be valid" do
  	assert @user.valid?
  end
  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?(:remember, '')
  end
end
