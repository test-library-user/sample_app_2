require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
  
  test 'login with invalid information' do
    get login_path
    assert_template 'sessions/new'
    post login_path, session: { email: " ", password: " " }
    assert_template 'sessions/new'
    assert flash.any?
    get root_path
    assert flash.empty?, "flash should be empty, but it's not"
  end
  
  
  
end
