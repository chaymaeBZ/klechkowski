require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = User.new(name: "a"*50, email: "chamchem@gmail.com")
  end
  test "name should be valid" do
  	assert @user.valid?
  end
  test "email should be valid" do
  	@user.email = "chamoumaa"
  	assert @user.valid?
  end
end
