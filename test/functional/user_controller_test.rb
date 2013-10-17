require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get init_users" do
    get :init_users
    assert_response :success
  end

end
