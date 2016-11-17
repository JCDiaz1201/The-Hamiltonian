require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(pseudonym: "Sample User", email: "user@example.com",
    					password: "football", password_confirmation: "football")
  end

  test "Should be valid" do
  	assert @user.valid?
  end

  test "name should be present" do
    @user.pseudonym = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  #make sure to have unique users
  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

end

