require 'test_helper'

class FlowerItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flower_item_index_url
    assert_response :success
  end

  test "should get show" do
    get flower_item_show_url
    assert_response :success
  end

end
