require 'test_helper'

class SearchControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get search_controller_search_url
    assert_response :success
  end

  test "should get execute_search" do
    get search_controller_execute_search_url
    assert_response :success
  end

end
