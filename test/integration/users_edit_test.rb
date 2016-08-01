require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@user = users(:michael)
  end
  test "edit with invalid information" do
  	get edit_user_path(@user)
	log_in_as(@user)
	assert_redirected_to edit_user_path(@user)
  	name = "chaymae"
  	email = "chem@cham.com"
  	patch user_path(@user), user: { name: name, email: email, password: "", password_confirmation: "" }
  	assert_not flash.empty?
  	assert_redirected_to @user
  	@user.reload
  	assert_equal @user.name, name
  	assert_equal @user.email, email
  end
end
