require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest

  test "should get execute_search" do
    get execute_search_url
    assert_response :success
  end

end
