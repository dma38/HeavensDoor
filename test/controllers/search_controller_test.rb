require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_result" do
    get search_search_result_url
    assert_response :success
  end

  test "should get search_show" do
    get search_search_show_url
    assert_response :success
  end

end
