require 'test_helper'

class VisitorsControllerTest < ActionController::TestCase
  test "should get user_id" do
    get :user_id
    assert_response :success
  end

end
