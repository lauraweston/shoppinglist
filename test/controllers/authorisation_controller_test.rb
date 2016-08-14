require 'test_helper'

class AuthorisationControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get authorisation_login_url
    assert_response :success
  end

end
