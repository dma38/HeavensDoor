require 'test_helper'

class RemoveCartControllerTest < ActionDispatch::IntegrationTest
  test "should get remove_cart" do
    get remove_cart_remove_cart_url
    assert_response :success
  end

end
