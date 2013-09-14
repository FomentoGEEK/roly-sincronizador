require 'test_helper'

class RolyControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get search" do
    get :search
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

end
