require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

end
