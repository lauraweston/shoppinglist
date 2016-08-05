require 'test_helper'

class ListControllerTest < ActionDispatch::IntegrationTest
  test "should get items" do
    get list_items_url
    assert_response :success
  end

end
