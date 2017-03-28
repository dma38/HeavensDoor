require 'test_helper'

class CategoryControllerTest < ActionDispatch::IntegrationTest
  test "should get cat_index" do
    get category_cat_index_url
    assert_response :success
  end

  test "should get cat_show" do
    get category_cat_show_url
    assert_response :success
  end

end
