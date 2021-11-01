require 'test_helper'

class MarketingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get marketings_index_url
    assert_response :success
  end

  test "should get show" do
    get marketings_show_url
    assert_response :success
  end

end
