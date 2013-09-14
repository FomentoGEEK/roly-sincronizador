require 'test_helper'

class AdminControllerTest < ActionController::TestCase
  test "should get search_preferences" do
    get :search_preferences
    assert_response :success
  end

  test "should get privacy_preferences" do
    get :privacy_preferences
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

end
