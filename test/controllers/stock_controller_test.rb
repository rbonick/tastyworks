require 'test_helper'

class StockControllerTest < ActionDispatch::IntegrationTest
  test "should get historical_data" do
    get stock_historical_data_url
    assert_response :success
  end

end
