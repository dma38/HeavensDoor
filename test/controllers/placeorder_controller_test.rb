require 'test_helper'

class PlaceorderControllerTest < ActionDispatch::IntegrationTest
  test "should get placeorder" do
    get placeorder_placeorder_url
    assert_response :success
  end

end
