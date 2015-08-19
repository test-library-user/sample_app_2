require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  
  def setup
    @user = users(:jordan)
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should redirect edit when not logged in" do
    get :edit, id: @user
    assert flash.any?
    assert_redirected_to login_url
  end
  
  test "should redirect update when not logged in" do
    patch :update, id: @user, user: { name: @user.name, email: @user.email }
    assert flash.any?
    assert_redirected_to login_url
  end

end
